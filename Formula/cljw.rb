class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.2/cljw-macos-aarch64.tar.gz"
      sha256 "50bb916fe1b49e0679c65b567fbac6a3d52fe931395a7ca535387e6032f83210"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.2/cljw-linux-x86_64.tar.gz"
      sha256 "c4c09f1d271ad8984823327eaa59ae0c5bbcece1649cb7646a1014d9daf72397"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.2", shell_output("#{bin}/cljw --version")
  end
end
