## 0.3.0 (2025-10-19)

### Changed

- Switch to `pplumbing-*` pkgs (#7, @mbarbin).

### Removed

- Removed `comments-parser` (#9, @mbarbin).
- Removed `parsing-utils-eio` (#8, @mbarbin).
- Removed debug toplevel variable - replaced by env var (#8, @mbarbin).

## 0.2.4 (2025-03-16)

### Changed

- Handle `loc` deprecations.

## 0.2.3 (2025-03-10)

### Changed

- Switched from `pp-log` to `pplumbing`.

## 0.2.2 (2024-11-10)

### Changed

- Upgraded to `pp-log.0.0.7`.

## 0.2.1 (2024-09-29)

### Changed

- Upgrade to `cmdlang.0.0.5`.

### Fixed

- Add missing dependencies between packages.

## 0.2.0 (2024-09-04)

### Changed

- Use name `parse_file` as basis for functions that parse files (breaking rename).

## 0.1.0 (2024-09-03)

### Changed

- Reduce dependencies of main `parsing-utils` package, move eio and comments support into separate package. Remove base dependency.
- Make `parsing-utils-eio` a separate package.
- Make `comments-parser` a separate package.

### Fixed

- Use `with-dev-setup` in opam files.

## 0.0.8 (2024-08-23)

### Changed

- Upgrade to `err0.0.0.2` & `loc0.0.1.0`.

## 0.0.7 (2024-08-22)

### Added

- New set of functions for `err0`.

### Changed

- Rename primitive `parser` (breaking change).

### Removed

- Remove functions based on `Error_log`.
- Remove functions based on `Or_error`.

## 0.0.6 (2024-07-26)

### Added

- Added dependabot config for automatically upgrading action files.

### Changed

- Upgrade `ppxlib` to `0.33` - activate unused items warnings.
- Upgrade `ocaml` to `5.2`.
- Upgrade `dune` to `3.16`.
- Upgrade base & co to `0.17`.

## 0.0.5 (2024-03-13)

### Changed

- Upgrade `fpath-base` to `0.0.9` (was renamed from `fpath-extended`).
- Upgrade `eio` to `1.0` (no change required).
- Uses `expect-test-helpers` (reduce core dependencies)
- Upgrade `eio` to `0.15`.
- Run `ppx_js_style` as a linter & make it a `dev` dependency.
- Upgrade GitHub workflows `actions/checkout` to v4.
- In CI, specify build target `@all`, and add `@lint`.
- List ppxs instead of `ppx_jane`.

### Removed

- Removed dependency into `Core`, use re-packaged `Doubly_linked`.

## 0.0.4 (2024-02-14)

### Changed

- Upgrade dune to `3.14`.
- Build the doc with sherlodoc available to enable the doc search bar.

## 0.0.3 (2024-02-09)

### Changed

- Internal changes related to the release process.
- Upgrade dune and internal dependencies.

## 0.0.2 (2024-01-18)

### Changed

- Internal changes related to build and release process.

## 0.0.1 (2023-11-12)

Initial release.
