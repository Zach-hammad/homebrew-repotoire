class Repotoire < Formula
  desc "Graph-powered code analysis with 115 detectors and predictive coding"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "a977d1820f557eaffd55fe2c42187fbdaa044b475a22fa9fd529798e459b96b3"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "87162b8fd92bc676c2646f8f17f992eff2f2b2346b51adc3e2d2e7fb2466e4c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "ae1ed753886df99e84032312c45c2782c795cec80eab1e30b09e2729226196ab"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
