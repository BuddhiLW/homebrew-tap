class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.16/cljw-macos-aarch64.tar.gz"
      sha256 "e8f028800af3592714b68be4b4fff6d35fba5040d631a036ba2522df6930ea84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.16/cljw-linux-x86_64.tar.gz"
      sha256 "c8f8febd08a4fc4a4c3bf8928b1a793e2f51547b360143720261e95f7fcd4235"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.16", shell_output("#{bin}/cljw --version")
  end
end
