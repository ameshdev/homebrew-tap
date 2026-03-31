class Amesh < Formula
  desc "Hardware-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-darwin-arm64.tar.gz"
      sha256 "e36ee94c5cdfdd34c704937111eab103565d93507385323ac7e283cb2d7ab024"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-darwin-x64.tar.gz"
      sha256 "2258633330f69074af2a55172907273103cc88447e0987b4a746e611df2fab34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-linux-x64.tar.gz"
      sha256 "574e14c813be4054b3ea0099b2ed5009a95d298ff7d30e1e34f6f1bf0be50b10"
    end
  end

  def install
    bin.install "amesh"
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
