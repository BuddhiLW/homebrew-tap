class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.9/cljw-macos-aarch64.tar.gz"
      sha256 "e3ee432b77d8e0b3a339559d70736896f092150f69150721d4a269b060328eef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.9/cljw-linux-x86_64.tar.gz"
      sha256 "276f63e9cd4fec71ece78a3e9b4c8a35a603cd517903877c28ae02c58ad10872"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.9", shell_output("#{bin}/cljw --version")
  end
end
