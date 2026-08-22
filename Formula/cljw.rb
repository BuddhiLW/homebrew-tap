class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.19/cljw-macos-aarch64.tar.gz"
      sha256 "6c7391971671306641e752954767074d37d3e5155d9ff0e84c55ce2ea1494d7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.19/cljw-linux-x86_64.tar.gz"
      sha256 "c22dacab92e1b4f70b114c25b77ed7a81f693e6237cfe61e9d36962ec0ce3911"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.19", shell_output("#{bin}/cljw --version")
  end
end
