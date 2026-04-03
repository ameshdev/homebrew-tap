class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.6/amesh-0.1.6-darwin-arm64.tar.gz"
      sha256 "bf87d7f185f3bab5c35aaf22f6b952387eb4a57a168d7ac6e1fed7da94387e43"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.6/amesh-0.1.6-darwin-x64.tar.gz"
      sha256 "9762ccbc3eb7191dad44defff430e9ed18f5d4d9d972a6a1ed7c92e106744359"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.6/amesh-0.1.6-linux-x64.tar.gz"
      sha256 "3cc10c950881b0523b6c9d8754f5956f31b528f55696c73d36f4c04d82ab5d42"
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
