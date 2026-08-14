class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.3/cljw-macos-aarch64.tar.gz"
      sha256 "3d3433e5238dbe4ade40635cfad909e18858de8b249fa823d904552097008661"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.3/cljw-linux-x86_64.tar.gz"
      sha256 "31fb4a3d63c142e4a440c32fc203a9e878522bb1c22e30238ca463d5e53656fa"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.3", shell_output("#{bin}/cljw --version")
  end
end
