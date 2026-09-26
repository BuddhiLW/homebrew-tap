class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.10/cljw-macos-aarch64.tar.gz"
      sha256 "c3d6eedf7550b781d696ad8e41b4246376a6702a439f1b2c8eed6e0e1d3fd72a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.10/cljw-linux-x86_64.tar.gz"
      sha256 "4849c9280148e8c208be164b5a04af1330ac9b192b269bf528e50ae3b4455b96"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.10", shell_output("#{bin}/cljw --version")
  end
end
