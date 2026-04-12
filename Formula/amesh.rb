class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.7.0/amesh-0.7.0-darwin-arm64.tar.gz"
      sha256 "6b772f78c5bc707ffb1eba3e89dfe58b4b15362cf450442cebadbc3b9c493a2f"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.7.0/amesh-0.7.0-darwin-x64.tar.gz"
      sha256 "962b137ea7165812c33d8e07b7d6c56cae438001e669943e895c93b04ebb2fbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.7.0/amesh-0.7.0-linux-arm64.tar.gz"
      sha256 "1daf1af6872b7cad38bf77ac9ce66edbf79e05a13e6eac96138ebf4a1e4022d9"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.7.0/amesh-0.7.0-linux-x64.tar.gz"
      sha256 "a9b128a61cf53bba4696522a70bffe2c8005a2c854d80cb36a03fd8725785541"
    end
  end

  def install
    bin.install "amesh"
    bin.install "amesh" if File.exist?("amesh")
    bin.install "amesh-se-helper" if File.exist?("amesh-se-helper")
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
