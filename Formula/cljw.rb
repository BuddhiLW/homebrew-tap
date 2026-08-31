class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.2/cljw-macos-aarch64.tar.gz"
      sha256 "1e8ed80928daaed620f85a2e4b2619b64ea5d24dabfb2508f56e17da8f6cf3d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.13.2/cljw-linux-x86_64.tar.gz"
      sha256 "33438d5df522bab06d78e9be04aa4a97a245724daafb8acdaddd47e0f56359b6"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.13.2", shell_output("#{bin}/cljw --version")
  end
end
