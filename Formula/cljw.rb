class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.18/cljw-macos-aarch64.tar.gz"
      sha256 "1db4a7b5b829169bb0ad1470198cd0aaaa80d88806d907572505e4df12bc8d9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.18/cljw-linux-x86_64.tar.gz"
      sha256 "6ed0f8eb23e5cb87cc87e5a81608c3f931e2ad7cdbe2dfe6f0b8bde72f0e9aa0"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.18", shell_output("#{bin}/cljw --version")
  end
end
