class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.11/cljw-macos-aarch64.tar.gz"
      sha256 "b4e6edccb2f86ec0dd015aa8e936f09a2a47de4adac5b452d12b9a0030d26f70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.11/cljw-linux-x86_64.tar.gz"
      sha256 "a2611d82af3fc3c1d8e6c24c26e342f10cbe562cfb6c540400816be922d35b52"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.11", shell_output("#{bin}/cljw --version")
  end
end
