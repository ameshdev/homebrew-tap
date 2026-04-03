class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-darwin-arm64.tar.gz"
      sha256 "3ec16f88a0270d0b32f49a275e9b9fe8e29e4316a6ad3c98782b7252ca0a5284"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-darwin-x64.tar.gz"
      sha256 "3f525ccf1a59dfc308d34e77b310f0b5936b68a68500b5c0eb6ee54ac6e25519"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-linux-x64.tar.gz"
      sha256 "231509f6d7495c27d38d79be79e1663316ae3033e5eac8367b98ac7cee4949d1"
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
