class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.13/cljw-macos-aarch64.tar.gz"
      sha256 "42280bd2a61ca43a68964af37fd4ad8c6d627fa5c82d7f4df1c1885311181029"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.13/cljw-linux-x86_64.tar.gz"
      sha256 "0a9e8dd805d0047034a708b1f19c338e07aced7242b9560b301112f60d42fea1"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.13", shell_output("#{bin}/cljw --version")
  end
end
