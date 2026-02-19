class Repotoire < Formula
  desc "Graph-powered code analysis with 114 detectors and adaptive thresholds"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.115"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "3348aa0dc4c81ab4e338471be5a06b0b8beb3d0b0394544aeb799b13847ab204"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "1828072e93e8a81a926716f1abc1f31187d4d26180ff26862156189b3c829f46"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "abc7fd16afc03a7ec7073fb1a18edb5038960f68e407077d44708daa3ce372f3"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
