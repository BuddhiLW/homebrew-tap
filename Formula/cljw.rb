class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.7/cljw-macos-aarch64.tar.gz"
      sha256 "59b596a7b9f3d1bf962e8b56e66f8e5514d70d2993091d28e799765275aeedea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.14.7/cljw-linux-x86_64.tar.gz"
      sha256 "d39cec50186a95b6882f543fff6d1326aa83f129b580f9faa5d0f7989ab03a50"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.14.7", shell_output("#{bin}/cljw --version")
  end
end
