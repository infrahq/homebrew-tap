class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infrahq/infra/releases/download/v0.15.2/infra_0.15.2_darwin_x86_64.zip"
      sha256 "57032813acc12dd73f1660280672df57e19602a50a3a629deaafe6059f422686"

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
      url "https://github.com/infrahq/infra/releases/download/v0.15.2/infra_0.15.2_darwin_arm64.zip"
      sha256 "7dfb3f5e245f4b4648451095b8db8b9bc0925aaac40b7d54f16491d1f77c8dd5"

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
      url "https://github.com/infrahq/infra/releases/download/v0.15.2/infra_0.15.2_linux_arm64.zip"
      sha256 "a712396291d525c7c48bf3bd3eb7d7b0cc88c470e1640dd4bbf7b19af31d6abc"

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
      url "https://github.com/infrahq/infra/releases/download/v0.15.2/infra_0.15.2_linux_x86_64.zip"
      sha256 "33bd7c3576b0ca1be4b06ae9f0dc51e9cab8271c3ce90dc9494c19e06175ea23"

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
