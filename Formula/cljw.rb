class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.3/cljw-macos-aarch64.tar.gz"
      sha256 "74e736a21010cd63f2c35563a4e37ed5221de0dbf59d1b091db487698c68d6a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.3/cljw-linux-x86_64.tar.gz"
      sha256 "7b39356fd133291d2e7c639674ffd9cd01c1771fd79639483057e4be682c84c5"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.3", shell_output("#{bin}/cljw --version")
  end
end
