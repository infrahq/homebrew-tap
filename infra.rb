# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.0.11"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.0.11/infra_0.0.11_darwin_x86_64.zip"
      sha256 "2a4fa2f23c20fe4b36cd9d624941495152408c7a82691539122aaa343740a21e"
    end
    if Hardware::CPU.arm?
      url "https://releases.infrahq.com/infra/v0.0.11/infra_0.0.11_darwin_arm64.zip"
      sha256 "9ba0a260a185094c8d4673184c186761fdb45977983b5e67f7ad76da2d4179cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.infrahq.com/infra/v0.0.11/infra_0.0.11_linux_x86_64.zip"
      sha256 "fde9bc72ed7c0729f60ed3a0c4aa3e0c5529c77807af6cadd8bf2317eb8c0366"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.infrahq.com/infra/v0.0.11/infra_0.0.11_linux_arm64.zip"
      sha256 "e78e793b637f0a32e875f811cf4a63bfaf2a72aa9419ed0b4476918cd28c9e82"
    end
  end

  def install
    bin.install "infra"
  end
end
