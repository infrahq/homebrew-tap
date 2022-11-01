class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infrahq/infra/releases/download/v0.16.0/infra_0.16.0_darwin_x86_64.zip"
      sha256 "a4ce10391b1fcdcdadf045d25c9ae077416e98ba29eaa0db7c206fbb081ea350"

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
      url "https://github.com/infrahq/infra/releases/download/v0.16.0/infra_0.16.0_darwin_arm64.zip"
      sha256 "1a53304ecc4a51c9c60d199532f518f0fb4aad75ca8e6496c94e5a2cc49f3b8d"

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
      url "https://github.com/infrahq/infra/releases/download/v0.16.0/infra_0.16.0_linux_arm64.zip"
      sha256 "4c91b5cc6992657ce60a2608de997fb5c264decb00bfe6c54f29c764ad605dd9"

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
      url "https://github.com/infrahq/infra/releases/download/v0.16.0/infra_0.16.0_linux_x86_64.zip"
      sha256 "3d523a04105c823ba452aaccdc6e84a72cceb57f1cb1df13d7d401c9a45d98db"

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
