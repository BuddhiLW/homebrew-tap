class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.1/cljw-macos-aarch64.tar.gz"
      sha256 "b1d471e60e4214d9cedae92a54dd488624510cccd44ec6b33ed1b985e42e54be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.15.1/cljw-linux-x86_64.tar.gz"
      sha256 "cb7ad4a5a137a70fb3ef061c782ef4ced5b9a5a9c3df5a7dcc6a444ac5d13a0c"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.1", shell_output("#{bin}/cljw --version")
  end
end
