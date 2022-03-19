# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.6.0/infra_0.6.0_darwin_x86_64.zip"
      sha256 "6e0a8a1b853ca87965e1f7495a80dd09a2ca8b492745548154145050e260a94c"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.infrahq.com/infra/v0.6.0/infra_0.6.0_darwin_arm64.zip"
      sha256 "d22397ccc9ed6b5ec08dd0380770d35e96d5c1ad634fbebb11e4039327110411"

      def install
        bin.install "infra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.6.0/infra_0.6.0_linux_x86_64.zip"
      sha256 "2fb0e39822259b0729f38f3c35230884a9e82ce38eef63a4734199269a4a260a"

      def install
        bin.install "infra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.infrahq.com/infra/v0.6.0/infra_0.6.0_linux_arm64.zip"
      sha256 "7c92c0eddd94c37648100ebaac187d70cb69445a4e7e1fb1afbbd11be63a0ef7"

      def install
        bin.install "infra"
      end
    end
  end
end
