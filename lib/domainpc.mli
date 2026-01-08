(* SPDX-License-Identifier: AGPL-3.0-or-later *)

include module type of Domain

val wait_on_unavailable : unit -> unit
(** [wait_on_unavailable ()] when all cores are used, wait for one of them to be
    freed instead of crashing. *)

val spawn_n : ?n:int -> (unit -> 'a) -> 'a t array
(** [spawn_n ?n f] if [n] is provided and is less than or equal to the number of
    free physical cores, spwans [n] new domains. If [n] is not provided and
    there is at least one free physical core, spawns as many domains as there
    physical cores.

    @raise Failure if there aren't enough free physical cores. *)
