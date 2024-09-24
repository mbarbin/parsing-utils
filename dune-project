(lang dune 3.16)

(name parsing-utils)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin <opensource@mbarbin.org>")

(source
 (github mbarbin/parsing-utils))

(documentation "https://mbarbin.github.io/parsing-utils/")

(package
 (name parsing-utils)
 (synopsis "A lib to make it easier to use generated Parsers/Lexers")
 (depends
  (ocaml
   (>= 5.2))
  (err
   (>= 0.0.5))
  (fpath
   (>= 0.7.3))
  (loc
   (>= 0.2.0))))

(package
 (name parsing-utils-eio)
 (synopsis
  "A lib to make it easier to use generated Parsers/Lexers with Eio")
 (depends
  (ocaml
   (>= 5.2))
  (eio
   (>= 1.0))
  (err
   (>= 0.0.5))
  (fpath
   (>= 0.7.3))
  (loc
   (>= 0.2.0))
  (parsing-utils
   (= :version))))

(package
 (name comments-parser)
 (synopsis "A lib to help parsing comments")
 (depends
  (ocaml
   (>= 5.2))
  (base
   (and
    (>= v0.17)
    (< v0.18)))
  (doubly-linked
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_sexp_conv
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_sexp_value
   (and
    (>= v0.17)
    (< v0.18)))
  (ppxlib
   (>= 0.33))))

(package
 (name parsing-utils-tests)
 (synopsis "Tests for parsing-utils")
 (depends
  (ocaml
   (>= 5.2))
  (ocamlformat
   (and
    :with-dev-setup
    (= 0.26.2)))
  (base
   (and
    (>= v0.17)
    (< v0.18)))
  (comments-parser
   (= :version))
  (doubly-linked
   (and
    (>= v0.17)
    (< v0.18)))
  (eio
   (>= 1.0))
  (err
   (>= 0.0.5))
  (expect_test_helpers_core
   (and
    (>= v0.17)
    (< v0.18)))
  (fpath
   (>= 0.7.3))
  (fpath-base
   (>= 0.2.0))
  (loc
   (>= 0.2.0))
  (parsing-utils
   (= :version))
  (parsing-utils-eio
   (= :version))
  (pp
   (>= 1.2.0))
  (pp-extended
   (>= 0.0.2))
  (ppx_compare
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_enumerate
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_expect
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_hash
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_here
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_js_style
   (and
    :with-dev-setup
    (>= v0.17)
    (< v0.18)))
  (ppx_let
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_sexp_conv
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_sexp_value
   (and
    (>= v0.17)
    (< v0.18)))
  (ppxlib
   (>= 0.33))
  (stdio
   (and
    (>= v0.17)
    (< v0.18)))
  (odoc
   (>= 2.4.2))
  (sherlodoc
   (and
    :with-doc
    (>= 0.2)))))
