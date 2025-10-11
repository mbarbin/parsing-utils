(lang dune 3.17)

(name parsing-utils)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin <opensource@mbarbin.org>")

(source
 (github mbarbin/parsing-utils))

(documentation "https://mbarbin.github.io/parsing-utils/")

(implicit_transitive_deps false)

(package
 (name parsing-utils)
 (synopsis "A lib to make it easier to use generated Parsers/Lexers")
 (depends
  (ocaml
   (>= 5.2))
  (fpath
   (>= 0.7.3))
  (loc
   (>= 0.2.2))
  (pp
   (>= 2.0.0))
  (pplumbing-err
   (>= 0.0.16))))

(package
 (name comments-parser)
 (synopsis "A lib to help parsing comments")
 (depends
  (ocaml
   (>= 5.2))
  (base
   (>= v0.17))
  (doubly-linked
   (>= v0.17))
  (ppx_sexp_conv
   (>= v0.17))
  (ppx_sexp_value
   (>= v0.17))
  (ppxlib
   (>= 0.33))))

(package
 (name parsing-utils-tests)
 (synopsis "Tests for parsing-utils")
 (depends
  (ocaml
   (>= 5.2))
  (base
   (>= v0.17))
  (comments-parser
   (= :version))
  (doubly-linked
   (>= v0.17))
  (expect_test_helpers_core
   (>= v0.17))
  (fpath
   (>= 0.7.3))
  (fpath-base
   (>= 0.2.2))
  (loc
   (>= 0.2.2))
  (parsing-utils
   (= :version))
  (pp
   (>= 2.0.0))
  (pp-extended
   (>= 0.0.2))
  (pplumbing-err
   (>= 0.0.16))
  (ppx_compare
   (>= v0.17))
  (ppx_enumerate
   (>= v0.17))
  (ppx_expect
   (>= v0.17))
  (ppx_hash
   (>= v0.17))
  (ppx_here
   (>= v0.17))
  (ppx_let
   (>= v0.17))
  (ppx_sexp_conv
   (>= v0.17))
  (ppx_sexp_value
   (>= v0.17))
  (ppxlib
   (>= 0.33))
  (stdio
   (>= v0.17))))

(package
 (name parsing-utils-dev)
 (synopsis "Package to regroup dev targets, documentation, and more")
 (allow_empty)
 (depends
  (ocaml
   (>= 5.2))
  (ocamlformat
   (= 0.27.0))
  (base
   (>= v0.17))
  (comments-parser
   (= :version))
  (doubly-linked
   (>= v0.17))
  (expect_test_helpers_core
   (>= v0.17))
  (fpath
   (>= 0.7.3))
  (fpath-base
   (>= 0.2.2))
  (loc
   (>= 0.2.2))
  (parsing-utils
   (= :version))
  (parsing-utils-tests
   (= :version))
  (pp
   (>= 2.0.0))
  (pp-extended
   (>= 0.0.2))
  (pplumbing-err
   (>= 0.0.16))
  (ppx_compare
   (>= v0.17))
  (ppx_enumerate
   (>= v0.17))
  (ppx_expect
   (>= v0.17))
  (ppx_hash
   (>= v0.17))
  (ppx_here
   (>= v0.17))
  (ppx_js_style
   (>= v0.17))
  (ppx_let
   (>= v0.17))
  (ppx_sexp_conv
   (>= v0.17))
  (ppx_sexp_value
   (>= v0.17))
  (ppxlib
   (>= 0.33))
  (stdio
   (>= v0.17))
  (odoc
   (>= 2.4.4))
  (sherlodoc
   (and
    :with-doc
    (>= 0.2)))))
