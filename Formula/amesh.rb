class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.0/amesh-0.2.0-darwin-arm64.tar.gz"
      sha256 "a3b6a4332ea1ca03444a6d8eb9d31b3bdf10a8b7652b2c258f2888c8b56c5c53"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.0/amesh-0.2.0-darwin-x64.tar.gz"
      sha256 "a31e097b39b25631a6807471c8f97474eaaf607455d9418de39c50ba9d9a6e34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.0/amesh-0.2.0-linux-x64.tar.gz"
      sha256 "efa20a68ff858205c5293f3a575e56b5a521bb9b32fab436727729980c6db02b"
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
