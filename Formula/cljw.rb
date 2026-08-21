class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.17/cljw-macos-aarch64.tar.gz"
      sha256 "4c9d1fae44cf005386914498772f13d55401668bf60546adbbb43f2440d880f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.17/cljw-linux-x86_64.tar.gz"
      sha256 "e540aefb510de048271c4709e54b953cce5b75b63e29958916819552a7863199"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.17", shell_output("#{bin}/cljw --version")
  end
end
