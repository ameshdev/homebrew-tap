class Amesh < Formula
  desc "Hardware-bound M2M authentication CLI — replaces static API keys with device identities"
  homepage "https://github.com/ameshdev/amesh"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-darwin-arm64.tar.gz"
      sha256 "4018092970de8b163d3d43d9c56f1ecbbb73f8485b6ead66d1862e8fc1531149"
    end

    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-darwin-x64.tar.gz"
      sha256 "3592d12b1729f505409f4b4e86bbeb0d1aae16481d8676b4deb5386c4a2e030c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ameshdev/amesh/releases/download/v0.1.2/amesh-0.1.2-linux-x64.tar.gz"
      sha256 "e5a9cf276e945f48188db0cec3ecc8ff9559578fe1954368fba71e3050a393b1"
    end
  end

  def install
    bin.install "amesh"
  end

  test do
    assert_match "amesh", shell_output("#{bin}/amesh --help")
  end
end
