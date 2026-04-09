class Amesh < Formula
  desc "Device-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.6.0/amesh-0.6.0-darwin-arm64.tar.gz"
      sha256 "52f39696876ab0e1f63fa5a463553cc0f8290cf1228d772696c7fe5001c3baaf"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.6.0/amesh-0.6.0-darwin-x64.tar.gz"
      sha256 "2955f04398837219ef91f821be5714631e5c7398c56ee1e80b9e1b3ecea6f8d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.6.0/amesh-0.6.0-linux-arm64.tar.gz"
      sha256 "0331e205da438e2e347af06933121973d1fd5c41c680108690d0d03f6ef15182"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.6.0/amesh-0.6.0-linux-x64.tar.gz"
      sha256 "225cc48c06dd1f4b47ee2c4efa43bdc373fb03d628c33a3615485184a837af14"
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
