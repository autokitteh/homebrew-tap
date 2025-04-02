# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Autokitteh < Formula
  desc "Durable workflow automation in just a few lines of code"
  homepage "https://autokitteh.com/"
  version "0.15.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.14/autokitteh_darwin_x86_64.tar.gz"
      sha256 "cbe8a297c9b45521b6961905cd272d301465ea18a441f952ea2c195569cfbc32"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.14/autokitteh_darwin_arm64.tar.gz"
      sha256 "b14bfb2bacd9edcbe089808cd9246151f852edbaa03fd34093f156706adce4c6"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.14/autokitteh_linux_x86_64.tar.gz"
        sha256 "726dce28cb4e6504551099c8c5d403f2cb9235e5f480ed94ea2baeb5a71c560e"

        def install
          bin.install "ak"
          generate_completions_from_executable(bin/"ak", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.14/autokitteh_linux_arm64.tar.gz"
        sha256 "c4189a152a742c7f67944c8b50387541c9403d0b6b1c84e28091331d6ddd7885"

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
