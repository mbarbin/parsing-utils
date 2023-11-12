(** This modules implements utils to call parsing functions given a Parser/Lexer
    pair. The pattern here is for a library to implement the [S] interface,
    and then use the functions provided here by supplying [S] as a first class
    module. For example:

    {v
      let nestlist =
        Parsing_utils.parse_file_exn
          (module Bopkit_syntax)
          ~path
          ~error_log
      in
      ...
    v}

    There are two styles offered depending on the context:

    1. Using the [Or_error] monad;
    2. Using [Error_log].

    In both cases, the functions take care of producing located error messages
    containing the name of the file and the position of the syntax error if any.

    The functions below that do not read the contents from a file still require
    a path to be provided, which will be used for error messages only (example
    when parsing the contents from stdin or a string). *)

module Comments_state = Comments_state

module type S = sig
  type token
  type t

  val lexer : Lexing.lexbuf -> token
  val parser_ : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> t
end

(** {1 String interface (no I/O)}*)

val parse_lexbuf
  :  (module S with type t = 'a)
  -> path:Fpath.t
  -> lexbuf:Lexing.lexbuf
  -> 'a Or_error.t

val parse_lexbuf_exn
  :  (module S with type t = 'a)
  -> path:Fpath.t
  -> lexbuf:Lexing.lexbuf
  -> error_log:Error_log.t
  -> 'a

(** {1 Stdio interface} *)

val parse_file : (module S with type t = 'a) -> path:Fpath.t -> 'a Or_error.t

val parse_file_exn
  :  (module S with type t = 'a)
  -> path:Fpath.t
  -> error_log:Error_log.t
  -> 'a

(** {1 Eio interface} *)

val parse : (module S with type t = 'a) -> path:_ Eio.Path.t -> 'a Or_error.t

val parse_exn
  :  (module S with type t = 'a)
  -> path:_ Eio.Path.t
  -> error_log:Error_log.t
  -> 'a
