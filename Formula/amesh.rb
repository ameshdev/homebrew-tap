class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.0/amesh-0.5.0-darwin-arm64.tar.gz"
      sha256 "fd79ffc486aa72664854bf7e40691bac4c3150eb391380d2765b74eab621ac99"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.0/amesh-0.5.0-darwin-x64.tar.gz"
      sha256 "d7a22f365b7cfc57559dbb425625d4458585b7a192474dbd25909c5195f0fa1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.0/amesh-0.5.0-linux-arm64.tar.gz"
      sha256 "3a7f9e4e9ede3a215cf78ff392948dd39cdbc0dbcca5316c780efc76ba621d72"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.5.0/amesh-0.5.0-linux-x64.tar.gz"
      sha256 "2929c2a7953cb76568d26134971e090dc02fe2dd1016058f18845ab6af71c0a6"
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
