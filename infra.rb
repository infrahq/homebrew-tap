# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.5.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.5.10/infra_0.5.10_darwin_x86_64.zip"
      sha256 "8d03756424c918789a10314abc15cd1951615ec66b401aa74798096401e40a30"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.infrahq.com/infra/v0.5.10/infra_0.5.10_darwin_arm64.zip"
      sha256 "9682bb3c7503807de27dd0e2e11316742c59b70dcbb70b0104f3e3e6a5222b40"

      def install
        bin.install "infra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.infrahq.com/infra/v0.5.10/infra_0.5.10_linux_arm64.zip"
      sha256 "4dd9cb85724c559237a1a267265010ce80e8cb65a826cd92c8fa63e8f07e3383"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.5.10/infra_0.5.10_linux_x86_64.zip"
      sha256 "55fb4ef66a405c881431f20bc041b2a4f5c9d6ea26ff6f0dba90b4dba37ac495"

      def install
        bin.install "infra"
      end
    end
  end
end
