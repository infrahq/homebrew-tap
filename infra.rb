class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infrahq/infra/releases/download/v0.18.0/infra_0.18.0_darwin_x86_64.zip"
      sha256 "385e799149e0779bc096747ae6492790db133d144c1c16dac8713a214e78a51c"

      def install
        bin.install "infra"
        output = Utils.popen_read("#{bin}/infra completion bash")
        (bash_completion/"infra").write output
        output = Utils.popen_read("#{bin}/infra completion zsh")
        (zsh_completion/"_infra").write output
        output = Utils.popen_read("#{bin}/infra completion fish")
        (fish_completion/"infra.fish").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/infrahq/infra/releases/download/v0.18.0/infra_0.18.0_darwin_arm64.zip"
      sha256 "79cd6876c0e1887ce681497b29bdffbefb7969a62bb92108c072f3839c6b890b"

      def install
        bin.install "infra"
        output = Utils.popen_read("#{bin}/infra completion bash")
        (bash_completion/"infra").write output
        output = Utils.popen_read("#{bin}/infra completion zsh")
        (zsh_completion/"_infra").write output
        output = Utils.popen_read("#{bin}/infra completion fish")
        (fish_completion/"infra.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/infrahq/infra/releases/download/v0.18.0/infra_0.18.0_linux_arm64.zip"
      sha256 "b8f2ae1b949cc2b9c0b10e5c1f1369898d2b638704413c9fa1b24cf2b4cd256e"

      def install
        bin.install "infra"
        output = Utils.popen_read("#{bin}/infra completion bash")
        (bash_completion/"infra").write output
        output = Utils.popen_read("#{bin}/infra completion zsh")
        (zsh_completion/"_infra").write output
        output = Utils.popen_read("#{bin}/infra completion fish")
        (fish_completion/"infra.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infrahq/infra/releases/download/v0.18.0/infra_0.18.0_linux_x86_64.zip"
      sha256 "eee75d0dbefc3e6794d4ae757ecfbca3f7016977ad0c4a412ad2347fd4389426"

      def install
        bin.install "infra"
        output = Utils.popen_read("#{bin}/infra completion bash")
        (bash_completion/"infra").write output
        output = Utils.popen_read("#{bin}/infra completion zsh")
        (zsh_completion/"_infra").write output
        output = Utils.popen_read("#{bin}/infra completion fish")
        (fish_completion/"infra.fish").write output
      end
    end
  end
end
