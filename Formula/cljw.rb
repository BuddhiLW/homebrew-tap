class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.12.0/cljw-macos-aarch64.tar.gz"
      sha256 "7ad9bc077ee819663c31ecfd81ab62f610211a60d85eac66aae02713c680263e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.12.0/cljw-linux-x86_64.tar.gz"
      sha256 "7bdf44a5a616f4a1806348a1d770b6852e1c08ec8db273c429b126235e957cba"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.12.0", shell_output("#{bin}/cljw --version")
  end
end
