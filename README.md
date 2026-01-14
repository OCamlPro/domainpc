# DomainPC: Domain Per Core

A copy of the OCaml [Domain module](https://ocaml.org/manual/latest/api/Domain.html),
where each domain is set to run on its own physical core using CPU affinities
from the [ocaml-processor](https://github.com/haesbaert/ocaml-processor) library.

Note: when using the library one should not use `Domain.spawn` (from the
standard library) as it would break the library's invariant guaranteeing that
domains run on separate cores.
