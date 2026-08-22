class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.11.0/cljw-macos-aarch64.tar.gz"
      sha256 "e986ea8a0c71a9c81a17693a6b275ac479ae6d97b7b892ba8155df35423dcd9e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.11.0/cljw-linux-x86_64.tar.gz"
      sha256 "b0c770287426c15c4ffeebb760d6901874556f531de12ee95e4014c8e6f7952c"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.11.0", shell_output("#{bin}/cljw --version")
  end
end
