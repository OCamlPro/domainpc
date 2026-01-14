(lang dune 3.20)
(name domainpc)
(version dev)

(generate_opam_files true)

(license AGPL-3.0-or-later)

(source
 (github ocamlpro/domainpc))

(authors "Hichem Rami Ait El Hara <hra@ocamlpro.com>")

(maintainers "Hichem Rami Ait El Hara <hra@ocamlpro.com>")

(package
 (name domainpc)
 (synopsis "Domainpc")
 (description "Domain Per Core, spawn domains ensuring that they run on separate cores.")
 (depends ocaml processor))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
