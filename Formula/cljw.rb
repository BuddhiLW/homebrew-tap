class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.8/cljw-macos-aarch64.tar.gz"
      sha256 "880d508ccd0fea64558f08c2b177c87f318af9f59494f7942e4cf7ac865e939b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.8/cljw-linux-x86_64.tar.gz"
      sha256 "22301d2c93eceb0ddf0d5bda7e84e268b19d58ee142ef8b9fb3afebd00584104"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.8", shell_output("#{bin}/cljw --version")
  end
end
