class Amesh < Formula
  desc "Hardware-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.3/amesh-0.1.3-darwin-arm64.tar.gz"
      sha256 "12e73d492f705f4cbc94959d5906c3bb09a1d27eaf51651e80f342cb9c037dde"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.3/amesh-0.1.3-darwin-x64.tar.gz"
      sha256 "af3fba30664a6daa199defd2179cd3727a6930144ffb84e51aea16afce5015bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.3/amesh-0.1.3-linux-x64.tar.gz"
      sha256 "34a795d3f4ed79d9f3390ca6135f26fc31458d1a244df9bb6565d71548960ac3"
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
