class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.2/amesh-0.2.2-darwin-arm64.tar.gz"
      sha256 "3888d848245a46940b17f79f076853c9733ca35f344dcba2997c4abbca1b47cf"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.2/amesh-0.2.2-darwin-x64.tar.gz"
      sha256 "d44669b997feca65967742dbefd94ff82fc76be36a8b184babe82f5c5b94d4b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.2/amesh-0.2.2-linux-x64.tar.gz"
      sha256 "e16b9525631db66ba82af212a8a2bed27246f56d23df42e9c55652d6c762579a"
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
