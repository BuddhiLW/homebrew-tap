class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.8/cljw-macos-aarch64.tar.gz"
      sha256 "3d854bc4573ce8f46bf9419b364f988cde2745a43d92374061c122d257795081"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.8/cljw-linux-x86_64.tar.gz"
      sha256 "adf51e0ea28ab51ae5a79ca02c44ff78d289af666e83f3330cc98bdedd09a0d8"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.8", shell_output("#{bin}/cljw --version")
  end
end
