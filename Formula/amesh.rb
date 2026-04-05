class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.4.0/amesh-0.4.0-darwin-arm64.tar.gz"
      sha256 "8deeccf006b24818c7917ad9d70932afcd6c2b8ed8115d9b53185d85017fa02c"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.4.0/amesh-0.4.0-darwin-x64.tar.gz"
      sha256 "11b25c39dd670a7bcd46760e6f54f79db92b5cb0a1d5c0df08a09298538fc08e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.4.0/amesh-0.4.0-linux-arm64.tar.gz"
      sha256 "b29c5f4591b4fc5203245081da2df4750dffdeb82270335bc2354cd8dd53725e"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.4.0/amesh-0.4.0-linux-x64.tar.gz"
      sha256 "7566d93b4c177d1d5d0bd96859c18ffc9b011880527ba0afd93c8483035b57b5"
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
