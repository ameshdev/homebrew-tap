class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.1/amesh-0.5.1-darwin-arm64.tar.gz"
      sha256 "62466c3e5e952b0e46cb4a25d699e50ab996902b24a3802ba2e3e93f250e06a9"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.1/amesh-0.5.1-darwin-x64.tar.gz"
      sha256 "1110af664992e876e345217846f349cfb2df0eba3f0ae229b55f327f718a7467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.1/amesh-0.5.1-linux-arm64.tar.gz"
      sha256 "6ad2782a559291b040df5407ce2be292ea673587729c05cb595d726ac73f2fd2"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.1/amesh-0.5.1-linux-x64.tar.gz"
      sha256 "d08b53a57a2509c9dea02eb0736c384961088ad29c8d87b5fa4647a6381fc185"
    end
  end

  def install
    bin.install "amesh"
    bin.install "amesh-agent" if File.exist?("amesh-agent")
    bin.install "amesh-se-helper" if File.exist?("amesh-se-helper")
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
