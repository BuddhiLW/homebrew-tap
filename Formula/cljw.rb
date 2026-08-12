class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.1/cljw-macos-aarch64.tar.gz"
      sha256 "52a76b4eb623004eaccb49f512f879eabe7d85f8626245473ead537363cf15b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.1/cljw-linux-x86_64.tar.gz"
      sha256 "eabded973ada89dd608dd5fbbc47845e9d6a5698675d14d133a6686ceb0e7035"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.1", shell_output("#{bin}/cljw --version")
  end
end
