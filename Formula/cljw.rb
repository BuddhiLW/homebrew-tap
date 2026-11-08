class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.7/cljw-macos-aarch64.tar.gz"
      sha256 "a6df6e3c6db441b5918fd8d691f9a87ba6905500ae0d2e97613a25ffdff25d96"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.7/cljw-linux-x86_64.tar.gz"
      sha256 "b70689236733c7ab5e18988b030ae4fc6eac88d48b2fd6e25896816fc1b87f7e"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.7", shell_output("#{bin}/cljw --version")
  end
end
