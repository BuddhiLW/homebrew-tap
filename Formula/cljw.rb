class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.3/cljw-macos-aarch64.tar.gz"
      sha256 "cbad5cc6a92709edb6e9f3453a9133f8ba6acae8da410d2afe57ae65f3435c8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.3/cljw-linux-x86_64.tar.gz"
      sha256 "fa212600c75fdf1b9287cd62e15fe5f1e91a949ebc322e4373df08e190089219"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.3", shell_output("#{bin}/cljw --version")
  end
end
