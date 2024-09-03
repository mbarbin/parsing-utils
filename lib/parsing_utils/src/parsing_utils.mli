(** This modules implements utils to call parsing functions given a Parser/Lexer
    pair. The pattern here is for a library to implement the [S] interface,
    and then use the functions provided here by supplying [S] as a first class
    module. For example:

    {v
      let nestlist =
        Parsing_utils.parse_file
          (module Bopkit_syntax)
          ~path
      in
      ...
    v}

    There are several styles offered depending on the context:

    1. Using the [Parsing_result] type.
    2. Using [Err].

    In all cases, the functions take care of producing located error messages
    containing the name of the file and the position of the syntax error if any.

    The functions below that do not read the contents from a file still require
    a path to be provided, which will be used for error messages only (example
    when parsing the contents from stdin or a string). *)

module type S = sig
  type token
  type t

  val lexer : Lexing.lexbuf -> token
  val parser : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> t
end

module Parsing_result : sig
  type error =
    { loc : Loc.t
    ; exn : exn
    }

  type 'a t = ('a, error) Result.t

  (** [ok_exn r] is [x] when r is [Ok x]. Otherwise it raises an [Err.E]
      exception. *)
  val ok_exn : 'a t -> 'a
end

(** {1 String interface (no I/O)} *)

val parse_lexbuf
  :  (module S with type t = 'a)
  -> path:Fpath.t
  -> lexbuf:Lexing.lexbuf
  -> 'a Parsing_result.t

val parse_lexbuf_exn
  :  (module S with type t = 'a)
  -> path:Fpath.t
  -> lexbuf:Lexing.lexbuf
  -> 'a

(** {1 Stdio interface} *)

val parse : (module S with type t = 'a) -> path:Fpath.t -> 'a Parsing_result.t
val parse_exn : (module S with type t = 'a) -> path:Fpath.t -> 'a
