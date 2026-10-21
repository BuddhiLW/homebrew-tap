class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.2/cljw-macos-aarch64.tar.gz"
      sha256 "4f6b0a12b214e45f6b03d88a6d44fc690478755d9617d6db31e904fd1b18075c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.2/cljw-linux-x86_64.tar.gz"
      sha256 "3ebfb00bfcd158863ae0d2180a5a0bba46e918aba87c8356e2c5b87e13df3233"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.2", shell_output("#{bin}/cljw --version")
  end
end
