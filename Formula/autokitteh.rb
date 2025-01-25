# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Autokitteh < Formula
  desc "Durable workflow automation in just a few lines of code"
  homepage "https://autokitteh.com/"
  version "0.13.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.13.2/autokitteh_darwin_x86_64.tar.gz"
      sha256 "983bb209f0359f8987e89e46356ef36df14945536e27252030b31786c550a223"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
    on_arm do
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.13.2/autokitteh_darwin_arm64.tar.gz"
      sha256 "e514566c16b3f6dae9c549e13961497701faa48d95f98186aa95e8e9b274af77"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.13.2/autokitteh_linux_x86_64.tar.gz"
        sha256 "fc1988a662cdc671b38bc4ac01808108ab8de2cddd886f7c4728e01d497f6417"

        def install
          bin.install "ak"
          generate_completions_from_executable(bin/"ak", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.13.2/autokitteh_linux_arm64.tar.gz"
        sha256 "475ba99b44fbc63b846b8a8174f46045f54387f9442daacf7e76b52eff56a074"

        def install
          bin.install "ak"
          generate_completions_from_executable(bin/"ak", "completion")
        end
      end
    end
  end

  test do
    system "#{bin}/ak version"
  end
end
