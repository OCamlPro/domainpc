(* SPDX-License-Identifier: AGPL-3.0-or-later *)

include module type of Domainpc_sig

module Domain : sig
  include module type of Domain
  include module type of Domainpc_sig
end
