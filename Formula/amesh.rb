class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.5/amesh-0.1.5-darwin-arm64.tar.gz"
      sha256 "de219959e253a9adb3a7337b18b3f35459652d9df7d120428858d104ca654b42"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.5/amesh-0.1.5-darwin-x64.tar.gz"
      sha256 "48056e71a6f14dd7994d22887d1f81856a3802c2eca1e1dbf99d497b5d841682"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.5/amesh-0.1.5-linux-x64.tar.gz"
      sha256 "69a96772a5aadaeb433f04bf599a57a9efb904de3f0b5aa92ccce949fbac3c81"
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
