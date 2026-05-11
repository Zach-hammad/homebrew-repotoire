class Repotoire < Formula
  desc "Graph-powered code analysis with 115 detectors and predictive coding"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "567b2d2f76f9d3770d7a3c4c828f9e684552dc4b89925c926f8d0beb42833280"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "2ab37e25ab551a04adccae590abc8efa05bc023367f721bd943f475f63fdb8d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "f2f74dd76af0f3c76efaa3b25ae5528328992f790a9a40acce8569dc032a0918"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
