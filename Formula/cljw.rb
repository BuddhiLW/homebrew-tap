class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.5/cljw-macos-aarch64.tar.gz"
      sha256 "734046f222ddc53479da26e2a11768658ac724c4e2d58895009064e43bc82964"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.5/cljw-linux-x86_64.tar.gz"
      sha256 "c47587f783a96cf74426b0e738026de4c8d2b56cf9ac05ee0fe867e56078001e"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.5", shell_output("#{bin}/cljw --version")
  end
end
