class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.0/cljw-macos-aarch64.tar.gz"
      sha256 "a4681603855c608009648fa6f682e253f5d5686d3d0e2c67a7f1fdf0a175c965"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.0/cljw-linux-x86_64.tar.gz"
      sha256 "edec85a45339c12bec6f59031a77b385fdf9bfe22934b1fd504f00a11db256bc"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.0", shell_output("#{bin}/cljw --version")
  end
end
