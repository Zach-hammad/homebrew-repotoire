class Repotoire < Formula
  desc "Graph-powered code analysis with 108 detectors"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.100"
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
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "cf4023edee94bd39d0b512174293aa24ca2100279cfaba76845032742fe43841"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
