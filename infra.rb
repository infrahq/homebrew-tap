# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.0.6-test"
  bottle :unneeded
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infrahq/infra/releases/download/v0.0.6-test/infra_0.0.6-test_darwin_x86_64.tar.gz"
      sha256 "50a4345562e72a24167e24a9a80468fb6adc3e7f18b6e07c1be069538ccf5df9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/infrahq/infra/releases/download/v0.0.6-test/infra_0.0.6-test_darwin_arm64.tar.gz"
      sha256 "ba8bb1de58634e4de7e60e432239f1dd9715c95d6b39a6d61af1d785afae7b13"
    end
  end

  def install
    bin.install "infra"
  end
end
