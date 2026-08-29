class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.12.1/cljw-macos-aarch64.tar.gz"
      sha256 "4eda24fdd20cc84146c2ebabf115ac6700ece9e6c509100e2af1386b05000068"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.12.1/cljw-linux-x86_64.tar.gz"
      sha256 "29e5b90b9f1ec25c46182fd136a5dff83e5b0ce84e48b1adbcb4c7fa1dc8cda9"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.12.1", shell_output("#{bin}/cljw --version")
  end
end
