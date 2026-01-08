(* SPDX-License-Identifier: AGPL-3.0-or-later *)

include module type of Domain

val set_crash_on_unavailable : unit -> unit
(** When all cores are used, crash instead of waiting for one of them to be
    freed *)
