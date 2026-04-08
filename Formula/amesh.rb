class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.2/amesh-0.5.2-darwin-arm64.tar.gz"
      sha256 "dd5e583b8f629a003a92e26da56751c895af1e3faf1e5597d32ba3dd8207721b"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.2/amesh-0.5.2-darwin-x64.tar.gz"
      sha256 "eba166ce7ea70d07a8a0439842ad4103a7c0fdb07d3db5832ac2171f1ae0d5fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.2/amesh-0.5.2-linux-arm64.tar.gz"
      sha256 "ea2806d95e23822b93adb31f1c444bf625e93ce24111d18b9644df5be8404d0a"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.2/amesh-0.5.2-linux-x64.tar.gz"
      sha256 "edcb7275f0885a2381e89fd34305039fbe68069bc1b5a374217f2d17ec7138d3"
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
