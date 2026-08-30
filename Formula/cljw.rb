class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.0/cljw-macos-aarch64.tar.gz"
      sha256 "7ba65691b5722e8ef5b37c4f92780ba2462eb66f532630ff2bdcc6964c6681d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.0/cljw-linux-x86_64.tar.gz"
      sha256 "43d7c3092b9573b7267dd25773cca05c6abb5985c18456e69c8be9e9b1658349"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.13.0", shell_output("#{bin}/cljw --version")
  end
end
