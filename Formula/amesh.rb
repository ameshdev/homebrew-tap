class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-darwin-arm64.tar.gz"
      sha256 "34abb58411ad04d226d11af7b88b4ee95d28792057b2177073488d76c7a9f31c"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-darwin-x64.tar.gz"
      sha256 "d61b0d767cb251837cfb247e2fffbfc6ab00fb717ddff2582f9c4673f2ee620f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.2.1/amesh-0.2.1-linux-x64.tar.gz"
      sha256 "cb90427618bbf0357f7aa131395ef0ac1d3ee24037e6728499b8ae31e32adeb3"
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
