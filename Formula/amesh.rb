class Amesh < Formula
  desc "Hardware-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-darwin-arm64.tar.gz"
      sha256 "baac1755aded7a68e35d71e821676118cd6eb2393f1c877f419cc2e81d42b19c"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-darwin-x64.tar.gz"
      sha256 "9dd54a7efaa1baf98002289973a6832f3a42cbf59d2852f192a08eb8bcc581f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-linux-x64.tar.gz"
      sha256 "a85378de7f78dacb1ecff52c0aa1961452fa90d5aea90a7f48f2f90d2d734b7c"
    end
  end

  def install
    bin.install "amesh"
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
