class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.1/cljw-macos-aarch64.tar.gz"
      sha256 "ac589d69edc3c580f13be9b5fc6188d281f046e79c147695cab253da745fb5c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.1/cljw-linux-x86_64.tar.gz"
      sha256 "2349294f129960bde3307ea54b17c78d8da79e3d6eff761ce88ee49c31238675"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.1", shell_output("#{bin}/cljw --version")
  end
end
