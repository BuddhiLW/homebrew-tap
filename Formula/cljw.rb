class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.9/cljw-macos-aarch64.tar.gz"
      sha256 "9c18df645f1748da9dec510723382838a1005e805750d76e5596c685c67ba175"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.9/cljw-linux-x86_64.tar.gz"
      sha256 "3195f1debbeab51e5999ed670521abf5d6169c3530ab0079e6a95dbfe945c931"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.9", shell_output("#{bin}/cljw --version")
  end
end
