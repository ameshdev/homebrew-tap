class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.2/amesh-0.3.2-darwin-arm64.tar.gz"
      sha256 "cb827d79ff12a1f14cdbf2284158671456a50d0aeaaff1eef5ef0c5f1a4e42e4"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.2/amesh-0.3.2-darwin-x64.tar.gz"
      sha256 "9525af581ac7123c09d515e9f89faab1d02e69dd4d925c9ee93d1db68d185c1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.2/amesh-0.3.2-linux-x64.tar.gz"
      sha256 "27a9dcf91c559f09f331e521a5f6ce7d8f637465815aa29d65f888d0d102127a"
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
