class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.0/amesh-0.3.0-darwin-arm64.tar.gz"
      sha256 "be52389fb7d0556b549b73e162ca130a1cee1253fa557583197f6341f847283a"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.0/amesh-0.3.0-darwin-x64.tar.gz"
      sha256 "73580155664ba891aed55579f523ed5802538f20eee37be8da9c4b7c0aa701c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.3.0/amesh-0.3.0-linux-x64.tar.gz"
      sha256 "035da24199c22098651a2ba2193054cc807919e277b1be69e31060265d880d2e"
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
