class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.11/cljw-macos-aarch64.tar.gz"
      sha256 "7af267cf62b796d2d146c13fd20f6fa40e88d3abdf1714ee8103a675cca6bdc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.11/cljw-linux-x86_64.tar.gz"
      sha256 "27d291fa316e5478e345466d407c96690893345391d783b711f4dc7123821895"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.11", shell_output("#{bin}/cljw --version")
  end
end
