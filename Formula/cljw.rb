class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.0/cljw-macos-aarch64.tar.gz"
      sha256 "05aef9380d50062bbd75bf79c44de62843d6cc1d38100c0aeadace8adddc181f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.0/cljw-linux-x86_64.tar.gz"
      sha256 "be1e69719dc30fb39be67f29efcaac29a810bc63a13ccadcb0baef3c1f79ced6"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.0", shell_output("#{bin}/cljw --version")
  end
end
