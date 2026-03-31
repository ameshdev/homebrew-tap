class Amesh < Formula
  desc "Hardware-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.1/amesh-0.1.1-darwin-arm64.tar.gz"
      sha256 "ad1d79effd38720f14462b34afba23ce71e9b78f5287cd5da76912799e043e7c"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.1/amesh-0.1.1-darwin-x64.tar.gz"
      sha256 "fce89d653afffff6c60f0390ec4c18e488b24b0649fba76d6c521088c1d196bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.1/amesh-0.1.1-linux-x64.tar.gz"
      sha256 "49097ac24e5e2cf97f82dcd284051d15061fa740aab19fdc3ee9a7125d01c3da"
    end
  end

  def install
    bin.install "amesh"
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
