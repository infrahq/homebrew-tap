# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.2.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.2.1/infra_0.2.1_darwin_x86_64.zip"
      sha256 "5c6257309a3f866ac7b63469f35c0aa09f6da6a5c48fbde174091dcd488c8ae4"
    end
    if Hardware::CPU.arm?
      url "https://releases.infrahq.com/infra/v0.2.1/infra_0.2.1_darwin_arm64.zip"
      sha256 "d1a24cdf36d0a78427c8d0cc0813758cb4b4f0e6277c0718826babbf3858ad94"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.2.1/infra_0.2.1_linux_x86_64.zip"
      sha256 "63b6f7a7de2952714b68e7464c10a4278c2383636a026b8abad8c528a91b4d12"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.infrahq.com/infra/v0.2.1/infra_0.2.1_linux_arm64.zip"
      sha256 "a54794c6af15985fec13f1f4d063c505d5f7ed6d45185e040882ca1a604f67e2"
    end
  end

  def install
    bin.install "infra"
  end
end
