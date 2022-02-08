# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.5.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.5.5/infra_0.5.5_darwin_x86_64.zip"
      sha256 "81d88aff4f877281efe74d0977059e0781a030725a8de0dc4bb80a8bb121f152"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.infrahq.com/infra/v0.5.5/infra_0.5.5_darwin_arm64.zip"
      sha256 "a1dee6a11d6e8be1f5c6d27f5711b73027252810b0aba7d4b0325b0572ff6d1e"

      def install
        bin.install "infra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.5.5/infra_0.5.5_linux_x86_64.zip"
      sha256 "335e40daf49930953b83348cdbabe4c374c4f6085468d39d9af6f151c407bd01"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.infrahq.com/infra/v0.5.5/infra_0.5.5_linux_arm64.zip"
      sha256 "964da26ec13bb494bcde643ac80250f9c7ad543b7654a36b9f109cefd555a422"

      def install
        bin.install "infra"
      end
    end
  end
end
