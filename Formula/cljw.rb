class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.12/cljw-macos-aarch64.tar.gz"
      sha256 "5a110e67b049ec3d8c0f2049c04272e3b69c351d9112210a0323ff5422d40829"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.12/cljw-linux-x86_64.tar.gz"
      sha256 "7d0051bf00dbddc2f77b0cff74957b2f8438f29dc61d0b7274a4844151307960"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.12", shell_output("#{bin}/cljw --version")
  end
end
