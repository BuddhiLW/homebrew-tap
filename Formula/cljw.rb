class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/BuddhiLW/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.10/cljw-macos-aarch64.tar.gz"
      sha256 "ebee3bd5592138fc1a5d853caea0d8e39c3f8b130e8475b9e5031e439763e30b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BuddhiLW/ClojureWasm/releases/download/v1.10.10/cljw-linux-x86_64.tar.gz"
      sha256 "9a5def4068a0e74a5b571dab5a5c115eb06ab6953d9347853ce06216cdb2cbd4"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.10.10", shell_output("#{bin}/cljw --version")
  end
end
