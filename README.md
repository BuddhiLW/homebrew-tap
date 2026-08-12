# buddhilw/tap

Homebrew tap for [ClojureWasm](https://github.com/BuddhiLW/ClojureWasm) —
`cljw`, a JVM-free Clojure runtime in Zig with a WebAssembly FFI.

```sh
brew install buddhilw/tap/cljw
cljw -e '(+ 1 2)'          # => 3
```

Upgrading:

```sh
brew update && brew upgrade buddhilw/tap/cljw
```

## What is in here

| Formula | Provides | Platforms |
|---------|----------|-----------|
| `cljw`  | The ClojureWasm runtime binary | macOS arm64, Linux x86_64 |

The formula installs a **pre-built binary** from the
[ClojureWasm releases](https://github.com/BuddhiLW/ClojureWasm/releases),
built on its native runner (not cross-compiled) so the embedded zwasm JIT's
arch-specific codegen is exercised by the same machine that ships it.

On macOS the binary is not code-signed. Homebrew installs it without a
Gatekeeper prompt on most setups; if macOS blocks it as coming from an
unidentified developer, clear the quarantine flag once:

```sh
xattr -d com.apple.quarantine "$(which cljw)"
```

## How a release reaches this tap

Pushing a `v*` tag to `BuddhiLW/ClojureWasm` runs its `release.yml`, which
builds `cljw-macos-aarch64.tar.gz` and `cljw-linux-x86_64.tar.gz` with
`.sha256` sidecars and attaches them to the GitHub Release. A final job in
that same workflow rewrites `Formula/cljw.rb` here — version, both URLs, both
checksums — and pushes. The formula is therefore downstream of the release,
never hand-edited ahead of one.

## History

ClojureWasm was created by [Shota Kudo (@chaploud)](https://github.com/chaploud)
and distributed through `clojurewasm/tap` through v1.10.0, its final upstream
release. This tap continues distribution for the maintained fork; the earlier
tap is no longer bumped.

## License

The formulas here are EPL-2.0, matching ClojureWasm itself.
