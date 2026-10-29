class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.5/cljw-macos-aarch64.tar.gz"
      sha256 "56c2c1613cfd16d18b6347649cde16d677e1f279dbe0c8e17bd8a553ae4893a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.5/cljw-linux-x86_64.tar.gz"
      sha256 "ff7bf54f867fdf4cee3638462d56ab43a8ca804e1b7e419488af6a981adc419a"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.5", shell_output("#{bin}/cljw --version")
  end
end
