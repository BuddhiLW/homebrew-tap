class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.2/cljw-macos-aarch64.tar.gz"
      sha256 "0716c9b988a6edb7b13b187e652b01a448bd4bd31bb2ad6fdecc364f46058821"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.2/cljw-linux-x86_64.tar.gz"
      sha256 "a7919bd423613a119704438c0dbf845328c5675440037eff77096d7baa4b40fa"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.2", shell_output("#{bin}/cljw --version")
  end
end
