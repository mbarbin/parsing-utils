module type S = sig
  type token
  type t

  val lexer : Lexing.lexbuf -> token
  val parser : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> t
end

module Parsing_result = struct
  type error =
    { loc : Loc.t
    ; exn : exn
    }

  type 'a t = ('a, error) Result.t

  let with_dot m =
    let len = String.length m in
    if len > 0 && m.[len - 1] = '.' then m else m ^ "."
  ;;

  let ok_exn (t : _ t) =
    match t with
    | Ok t -> t
    | Error { loc; exn } ->
      let extra =
        match exn with
        | Failure m -> [ Pp.text (with_dot m) ]
        | _ -> [ Pp.text "Syntax error." ]
      in
      Err.raise ~loc extra
  ;;
end

let parse_lexbuf (type t) (module S : S with type t = t) ~path ~lexbuf =
  Lexing.set_filename lexbuf (path |> Fpath.to_string);
  match S.parser S.lexer lexbuf with
  | program -> Ok program
  | exception exn ->
    let loc = Loc.of_lexbuf lexbuf in
    Error { Parsing_result.loc; exn }
;;

let parse_lexbuf_exn (type t) (module S : S with type t = t) ~path ~lexbuf =
  parse_lexbuf (module S) ~path ~lexbuf |> Parsing_result.ok_exn
;;

let parse_file (type t) (module S : S with type t = t) ~path =
  match In_channel.open_bin (path |> Fpath.to_string) with
  | exception Sys_error (m : string) ->
    Error { Parsing_result.loc = Loc.of_file ~path; exn = Failure m }
  | ic ->
    Fun.protect
      ~finally:(fun () -> In_channel.close ic)
      (fun () ->
         let lexbuf = Lexing.from_channel ic in
         parse_lexbuf (module S) ~path ~lexbuf)
;;

let parse_file_exn (type t) (module S : S with type t = t) ~path =
  parse_file (module S) ~path |> Parsing_result.ok_exn
;;
