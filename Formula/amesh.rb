class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.5/amesh-0.1.5-darwin-arm64.tar.gz"
      sha256 "361c2b7d45f92d42e5d67e2a4518947f599058a50dfe58e6e0ae6f7a6d6252cb"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.5/amesh-0.1.5-darwin-x64.tar.gz"
      sha256 "86d6e433fec689eca972be34a7ea64ae7aeb3ef62eefb69faf0a861edfe20b07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.5/amesh-0.1.5-linux-x64.tar.gz"
      sha256 "bb910373199aa9956ad4eaf2dc07af170344e7a1f0a899a5fb8c900a161b6d1f"
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
