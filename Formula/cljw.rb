class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.12/cljw-macos-aarch64.tar.gz"
      sha256 "1039d4e8058e72d6043500953b55b440313153ea55759a6ff170d71a84ac5bb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.12/cljw-linux-x86_64.tar.gz"
      sha256 "86bc9a8829267cdf1c86f109c7969af1017067e73c1ed47bcb7a42d8785ee09b"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.12", shell_output("#{bin}/cljw --version")
  end
end
