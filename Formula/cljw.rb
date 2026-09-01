class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.4/cljw-macos-aarch64.tar.gz"
      sha256 "44ba7690d5b993123585dca5ac9867a7a73aefa3f9c3052836740b10cacb5f8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.4/cljw-linux-x86_64.tar.gz"
      sha256 "d56a249da77ba1e345f53d352ddd85905258b6744fe2c373cb27179da5e1dd29"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.13.4", shell_output("#{bin}/cljw --version")
  end
end
