class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.15/cljw-macos-aarch64.tar.gz"
      sha256 "398ef3026479859db82801d90e824ce9904b375e808ba88bea859ce22f2573b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.15/cljw-linux-x86_64.tar.gz"
      sha256 "d81839696cda0133e198fd140f15f45d9b4d217efe8a45fd8492deb0d8e688ff"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.15", shell_output("#{bin}/cljw --version")
  end
end
