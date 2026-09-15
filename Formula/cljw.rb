class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.6/cljw-macos-aarch64.tar.gz"
      sha256 "0e26ee5fe28ddc296ae87ec7ad93b10168b44253c846ed9bf5726f3158665253"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.6/cljw-linux-x86_64.tar.gz"
      sha256 "9d99cc6a8acb6c4f7d98583af35202a04d33c11a389a6a5b63f2999fa7d73982"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.6", shell_output("#{bin}/cljw --version")
  end
end
