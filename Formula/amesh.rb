class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.1/amesh-0.3.1-darwin-arm64.tar.gz"
      sha256 "40137b2ddd2822467b23430b8591d6d6acae62d47d5a694ec1255bdf8cff720b"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.1/amesh-0.3.1-darwin-x64.tar.gz"
      sha256 "fd119995694289f5ab96d136538c91ed214aa075ae8796b7825097cefcf1341c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.1/amesh-0.3.1-linux-x64.tar.gz"
      sha256 "846f2c06fb5f7fd1647dad7e8cbf71c3a7b809832fbd1643534f484934e4a595"
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
