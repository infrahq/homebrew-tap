# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.0.12"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.0.12/infra_0.0.12_darwin_x86_64.zip"
      sha256 "e2bc3cb5a1d1a528110da77b5daf03f7929c7d8097d3d83ddbdbc3f9f6c2bf9e"
    end
    if Hardware::CPU.arm?
      url "https://releases.infrahq.com/infra/v0.0.12/infra_0.0.12_darwin_arm64.zip"
      sha256 "c086de7bff3773b978952bd62137ddd800ceb943be7227bda59bc0591e00443e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.0.12/infra_0.0.12_linux_x86_64.zip"
      sha256 "4b2546248afc27facdab299d7f7a84c198a022656d65d8a8b011aaec6bc68b2a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.infrahq.com/infra/v0.0.12/infra_0.0.12_linux_arm64.zip"
      sha256 "fe8c853450a2b893545ae173ac3b89aa56c9654db5113161bdaa0f44ec75d529"
    end
  end

  def install
    bin.install "infra"
  end
end
