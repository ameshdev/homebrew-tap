class Amesh < Formula
  desc "Hardware-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.4/amesh-0.1.4-darwin-arm64.tar.gz"
      sha256 "74a7982f4486539085c15b50f6762491439da96c4f72cfcd674469ea5871fa5b"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.4/amesh-0.1.4-darwin-x64.tar.gz"
      sha256 "19f591698fa41940a6227fd9433b349acf7088c475d0a06bd9b6d4dbfb163c6f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.4/amesh-0.1.4-linux-x64.tar.gz"
      sha256 "d239e273b53cf0ef639558781a4b1de702cd55849ea95be620d9447f269a7677"
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
