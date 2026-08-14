class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.4/cljw-macos-aarch64.tar.gz"
      sha256 "8e416cca1b5cbe845fdbc35488474c061aea715f5624afc769807c93377b7e6f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.4/cljw-linux-x86_64.tar.gz"
      sha256 "419fe222204d56e995ed92c7cb44bb0acc4924c60390fd8265052aae81a5870a"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.4", shell_output("#{bin}/cljw --version")
  end
end
