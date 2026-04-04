class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.3/amesh-0.3.3-darwin-arm64.tar.gz"
      sha256 "975d244e5c80beb9dde5c1788c087613f15b64e733f263ed4f8a1aef12466dcc"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.3/amesh-0.3.3-darwin-x64.tar.gz"
      sha256 "cddf495fd1bb8725bf3d1c937e088e3b35f9c07ebae9357a6fb7ef3f4992a5d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.3/amesh-0.3.3-linux-x64.tar.gz"
      sha256 "7feecc4125459c355c424ac58ce02808a7d6b8d0d0908cc871e4344bd42c1d16"
    end
  end

  def install
    bin.install "amesh"
    bin.install "amesh-se-helper" if File.exist?("amesh-se-helper")
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
