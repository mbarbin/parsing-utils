module type S = Parsing_utils.S

module Parsing_result = Parsing_utils.Parsing_result

let parse_file (type t) (module S : S with type t = t) ~path:eio_path =
  let path = eio_path |> snd |> Fpath.v in
  match Eio.Path.load eio_path with
  | exception (Eio.Io _ as exn) ->
    Error
      { Parsing_result.loc = Loc.in_file ~path; exn = Failure (Printexc.to_string exn) }
  | contents ->
    let lexbuf = Lexing.from_string contents in
    Parsing_utils.parse_lexbuf (module S) ~path ~lexbuf
;;

let parse_file_exn (type t) (module S : S with type t = t) ~path =
  parse_file (module S) ~path |> Parsing_result.ok_exn
;;
