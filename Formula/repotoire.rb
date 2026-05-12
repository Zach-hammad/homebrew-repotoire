class Repotoire < Formula
  desc "Graph-powered code analysis with 115 detectors and predictive coding"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "4076f90d59502ac553e32c38bc450c6dc5cf18d3bc295cfdb78fc170cf10b39c"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "637464d279ed401580852a46774e8d845d8cb51e8da09c35bfe270df598f0745"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "315c9a28776fe4128f47bb63b17d9b80d3b50a9271ae4a57cf15f149c82d2c0f"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
