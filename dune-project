(lang dune 3.11)

(name parsing-utils)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin")

(source
 (github mbarbin/parsing-utils))

(documentation "https://mbarbin.github.io/parsing-utils/")

(package
 (name parsing-utils)
 (synopsis "A lib to make it easier to use generated Parsers/Lexers")
 (description "A lib to make it easier to use generated Parsers/Lexers")
 (depends
  (ocaml
   (>= 5.1))
  (dune
   (>= 3.11))
  (base
   (and
    (>= v0.16)
    (< v0.17)))
  (core
   (and
    (>= v0.16)
    (< v0.17)))
  (eio
   (>= 0.13))
  (error-log
   (>= 0.0.1))
  (expect_test_helpers_core
   (and
    :with-test
    (>= v0.16)
    (< v0.17)))
  (fpath
   (>= 0.7.3))
  (fpath-extended
   (>= 0.0.2))
  (loc
   (>= 0.0.1))
  (pp
   (>= 1.2.0))
  (pp-extended
   (>= 0.0.1))
  (ppx_jane
   (and
    (>= v0.16)
    (< v0.17)))
  (ppx_js_style
   (and
    (>= v0.16)
    (< v0.17)))
  (stdio
   (and
    (>= v0.16)
    (< v0.17)))))
