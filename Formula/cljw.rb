class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.6/cljw-macos-aarch64.tar.gz"
      sha256 "5aa9a0ea0df795a2433ef320910733b27807aaa8eae56440f4553f0e78581f72"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.6/cljw-linux-x86_64.tar.gz"
      sha256 "b39723803d3d75adc752885bd61160b4165aa1c805c9b1561fa130dfd5521c97"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.6", shell_output("#{bin}/cljw --version")
  end
end
