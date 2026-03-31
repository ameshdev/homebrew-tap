class Amesh < Formula
  desc "Hardware-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.1/amesh-0.1.1-darwin-arm64.tar.gz"
      sha256 "2d098b8c04d87b1616b1834cc99a076f58893cd5c06c3771da06737824cf49e6"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.1/amesh-0.1.1-darwin-x64.tar.gz"
      sha256 "5f06a3c8cb9521641d433a09eca163bfe62a2fee7cf8ac38558b5ae908041059"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.1/amesh-0.1.1-linux-x64.tar.gz"
      sha256 "996b10727c0e1f5f8b4826c5d6d443b8155ad1807970cd047e6a7d4802c6b135"
    end
  end

  def install
    bin.install "amesh"
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
