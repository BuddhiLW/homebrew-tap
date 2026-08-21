class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.14/cljw-macos-aarch64.tar.gz"
      sha256 "59465eb9db73dd01d4cecf16dc7c209d4c11adfb513f4b9f2ea5676bd4ac76a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.14/cljw-linux-x86_64.tar.gz"
      sha256 "6fbf1c6cc97673b0cd8dc03e58c9df335fa74def460ce6f845e077f69adb2a84"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.14", shell_output("#{bin}/cljw --version")
  end
end
