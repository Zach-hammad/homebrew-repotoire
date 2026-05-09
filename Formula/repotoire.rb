class Repotoire < Formula
  desc "Graph-powered code analysis with 115 detectors and predictive coding"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "cda215551982788a2e477a5ac2486f23fae999993cead49d962fb4a8514ad312"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "813923666652bf4b90b596e099d5344a11bc04838621e1f8368c5c8ee0bf49fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "5143a7f4f092c0b9b1ec9b065c3b5ab295a6aac7e3d259a021c1c95fb2909d44"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
