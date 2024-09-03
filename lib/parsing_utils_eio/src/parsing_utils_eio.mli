(** An [Eio] interface to [Parsing_utils]. *)

module type S = Parsing_utils.S

module Parsing_result = Parsing_utils.Parsing_result

val parse : (module S with type t = 'a) -> path:_ Eio.Path.t -> 'a Parsing_result.t
val parse_exn : (module S with type t = 'a) -> path:_ Eio.Path.t -> 'a
