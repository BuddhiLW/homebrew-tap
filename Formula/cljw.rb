class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.5/cljw-macos-aarch64.tar.gz"
      sha256 "05ab9aae3a1eac60a4dd3e9974a3e0b9db40f283d465ae1d346a3916fed52541"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.5/cljw-linux-x86_64.tar.gz"
      sha256 "9a88e2e1e715696416626249334d65e5a86741a9d0bfeff08d41b86c794560db"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.5", shell_output("#{bin}/cljw --version")
  end
end
