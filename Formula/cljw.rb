class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.7/cljw-macos-aarch64.tar.gz"
      sha256 "cb2c53ed6587e9d2468ec7cbbdcc3a353d201727dc99a3f69a109314aa7d7820"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.7/cljw-linux-x86_64.tar.gz"
      sha256 "10e9f7bfaee9efb2f5f8a26385071678c872804a676f153a11e07b52d2f62deb"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.7", shell_output("#{bin}/cljw --version")
  end
end
