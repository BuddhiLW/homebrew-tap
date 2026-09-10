class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.4/cljw-macos-aarch64.tar.gz"
      sha256 "a59f0c684430a0e837463b4a76f45f1d498d0db2dc183d78b0d4580f342030be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.4/cljw-linux-x86_64.tar.gz"
      sha256 "a032776213e0894d2bc7cc40c8adfffd8f96b03cd3b8499e8ffd9589bf391c58"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.4", shell_output("#{bin}/cljw --version")
  end
end
