class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.4/cljw-macos-aarch64.tar.gz"
      sha256 "d84627f143d2e205691fa04ccafef33ce5b115125381bd71e76f15f2fca614be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.4/cljw-linux-x86_64.tar.gz"
      sha256 "1fa934c46229aeaaef777a38855930207980f55efc4330f22e73fcec61ec571f"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.4", shell_output("#{bin}/cljw --version")
  end
end
