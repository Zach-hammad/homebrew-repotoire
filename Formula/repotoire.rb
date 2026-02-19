class Repotoire < Formula
  desc "Graph-powered code analysis with 114 detectors and adaptive thresholds"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.112"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "877071c9281a8d4c3abfa2a718f275eb0922e66e2d15b38c9a7fa570001d968c"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "b5242a95c3b0e6fcf2894ac57339612c3dc4e15e79fcec41312622c1ef281751"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-v#{version}-x86_64-linux.tar.gz"
      sha256 "23284cae0f4cee7f8675df26993a2159404fa17467bb9f979e6782e49ee66672"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
