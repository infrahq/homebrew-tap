class InfraDev < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.13.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://infrahq-releases-20220616163920865500000001.s3.us-west-2.amazonaws.com/infra/v0.13.3/infra_0.13.3_darwin_arm64.zip"
      sha256 "8839942bf9c12e54507e7d399622cbc092669a7c299a2fa51a5e6cd7dbd9ff3e"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.intel?
      url "https://infrahq-releases-20220616163920865500000001.s3.us-west-2.amazonaws.com/infra/v0.13.3/infra_0.13.3_darwin_x86_64.zip"
      sha256 "05cf064989ad26f0f8e074bb4175d8defa942b0e6333671c768d30350329538c"

      def install
        bin.install "infra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://infrahq-releases-20220616163920865500000001.s3.us-west-2.amazonaws.com/infra/v0.13.3/infra_0.13.3_linux_arm64.zip"
      sha256 "4e205612082d93b709813478693665fc793803788879c99cac0a66819efffc5d"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.intel?
      url "https://infrahq-releases-20220616163920865500000001.s3.us-west-2.amazonaws.com/infra/v0.13.3/infra_0.13.3_linux_x86_64.zip"
      sha256 "29b6fead2c34fdb1c0150dea4b360c2585b37d1e22ab87349aa48980e4e98e23"

      def install
        bin.install "infra"
      end
    end
  end
end
