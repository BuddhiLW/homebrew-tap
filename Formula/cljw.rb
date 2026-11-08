class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.6/cljw-macos-aarch64.tar.gz"
      sha256 "c347ad811b9c3436558156409ac3680d730e4ee2eacae7e2c1de1315bbe531d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.6/cljw-linux-x86_64.tar.gz"
      sha256 "dc7305412b32f67a02096c3ab76d0b7773a3664bb7c98eebc3f532ab96a2efd8"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.6", shell_output("#{bin}/cljw --version")
  end
end
