# DomainPC: Domain Per Core

Offers [Domain](https://ocaml.org/manual/latest/api/Domain.html) spawning
functions which can ensure that each domain is set to run on its own physical
core using CPU affinities from the
[ocaml-processor](https://github.com/haesbaert/ocaml-processor) library.
These functions are described in [domainpc_sig.mli](./lib/domainpc_sig.mli).

It also offers a replacement of the standard library's
[Domain](https://ocaml.org/manual/latest/api/Domain.html) module where these
functions are available.

Note: when using the library one should not use `Domain.spawn` (from the
standard library) as it would break the library's invariant guaranteeing that
domains run on separate cores.
