class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.15.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infrahq/infra/releases/download/v0.15.1/infra_0.15.1_darwin_x86_64.zip"
      sha256 "820872c5537e15658fe5654dffb5b65942bd3555bae685c21222984f764039cc"

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
      url "https://github.com/infrahq/infra/releases/download/v0.15.1/infra_0.15.1_darwin_arm64.zip"
      sha256 "a3f303cdefe180a165103c82517f13c18a46abe2c19efca6d6723ec7759a76ed"

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
      url "https://github.com/infrahq/infra/releases/download/v0.15.1/infra_0.15.1_linux_arm64.zip"
      sha256 "536b30fe81159af88b3813a33e38ec3c4061c812be03bf77d0b38a65d0d04cf6"

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
      url "https://github.com/infrahq/infra/releases/download/v0.15.1/infra_0.15.1_linux_x86_64.zip"
      sha256 "bc4b5483e4f5022c82e71551ddd6ba546dd8852c165955d3d4da2c16c9449ac6"

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
