class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.8/cljw-macos-aarch64.tar.gz"
      sha256 "d78fc4e5a3996e767622904d2c33fd612afb1b749924097d6f7f304f2528a679"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.8/cljw-linux-x86_64.tar.gz"
      sha256 "51e24bf4f31deefec8cdf1f6443036bb8784db9cebb6ff7bf7c4d9dc9258f907"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.8", shell_output("#{bin}/cljw --version")
  end
end
