class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-darwin-arm64.tar.gz"
      sha256 "48984f0bd8c3e6d77eadd71826cc4bb0792e9ac5198a47c7371ae327c6e7d493"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-darwin-x64.tar.gz"
      sha256 "3b875a21588379e40ade3410b43b4d46262eb5c9cb3f3cf46e3b00fca39a8d55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-linux-x64.tar.gz"
      sha256 "5e241217f7fd83cfa853d6f9bcb70cd5c5ed2c603511f52b8551680a0aeb860f"
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
