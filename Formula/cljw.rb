class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.11.1/cljw-macos-aarch64.tar.gz"
      sha256 "845234fd57f4330b01a0af5f953267fab412b7ee6958d3816b9a93358d01d6e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.11.1/cljw-linux-x86_64.tar.gz"
      sha256 "c3386eb5d993fe41c4e1f47c96ace66e18752fdeca6ba503eae1f4fb2009daee"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.11.1", shell_output("#{bin}/cljw --version")
  end
end
