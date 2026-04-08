class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.3/amesh-0.5.3-darwin-arm64.tar.gz"
      sha256 "b720740499ac8cc953040fc66b49218545bf29735a7fffbf562408eb5147c10f"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.3/amesh-0.5.3-darwin-x64.tar.gz"
      sha256 "24ce96da11767ac47a15b2f5b0b32afa0720e25ba48e6c43eef60a7922934af3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.3/amesh-0.5.3-linux-arm64.tar.gz"
      sha256 "aa3d3be8bc33815ff1da380fe9d162f8ec0ecd9f16f4e92884c102d776c9a551"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.3/amesh-0.5.3-linux-x64.tar.gz"
      sha256 "d384a0211deecc3e47a113b6fa08cdd6d92022ccc183ab2b5ffeb36ac1ee00bd"
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
