class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.1/cljw-macos-aarch64.tar.gz"
      sha256 "189be0f562f5c3bcfe260a148c5b36b36251f819812f43e5abc62cd7a11cf4fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.1/cljw-linux-x86_64.tar.gz"
      sha256 "c736fe5b0b52c84e84bfa845013c32eec781cc9652a7c38a8a09207a354345c4"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.13.1", shell_output("#{bin}/cljw --version")
  end
end
