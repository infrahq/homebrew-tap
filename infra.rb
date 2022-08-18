class Infra < Formula
  desc "Infra"
  homepage "https://infrahq.com"
  version "0.14.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infrahq/infra/releases/download/v0.14.4/infra_0.14.4_darwin_x86_64.zip"
      sha256 "d41f66aa3c9ea47c09027e181ba6678ee4f9a5dafaf028547c7aca6c682f0115"

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
      url "https://github.com/infrahq/infra/releases/download/v0.14.4/infra_0.14.4_darwin_arm64.zip"
      sha256 "06391760e2c763c4a0efe7b262b75719243ff90bd954068e82efd74c9d034e7b"

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
      url "https://github.com/infrahq/infra/releases/download/v0.14.4/infra_0.14.4_linux_arm64.zip"
      sha256 "5ec6da6e46b0f5385d02a8d74dd49aeb744343c64119f984b28898e4aa84e329"

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
      url "https://github.com/infrahq/infra/releases/download/v0.14.4/infra_0.14.4_linux_x86_64.zip"
      sha256 "651959b108cbb9799e5f0d2d541b38187ae2e1fb3c3298067be4c3f11ba5e7a1"

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
