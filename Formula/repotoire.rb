class Repotoire < Formula
  desc "Graph-powered code analysis with 115 detectors and predictive coding"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "706c96a66d373ab1136c7113cfa986e7f6cc1259d9087a9da5155f28a30b9fdf"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "c69a37dbdf99377714aad6ef7eee20f32dbaab1888b8690ed13762ceca22e3d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "eacb5d360168ee9b2536aab22986d4ab10731fab81390c5ab3f1cd63a5e6aa60"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
