# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Autokitteh < Formula
  desc "Durable workflow automation in just a few lines of code"
  homepage "https://autokitteh.com/"
  version "0.12.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.12.6/autokitteh_darwin_x86_64.tar.gz"
      sha256 "ea6f3afc0b0cd89e58a712c2c7ac26ec963d2147122cb60e2ab805a760b9c1f2"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
    on_arm do
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.12.6/autokitteh_darwin_arm64.tar.gz"
      sha256 "89236622323431c9f448720e38b43043ea5cc4666db70149ae0781522d558dd6"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.12.6/autokitteh_linux_x86_64.tar.gz"
        sha256 "d6049b8d3e5e65f6217179df738cd6e492af0cfbc4abd005060821abc4fed556"

        def install
          bin.install "ak"
          generate_completions_from_executable(bin/"ak", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.12.6/autokitteh_linux_arm64.tar.gz"
        sha256 "1b527612dc7bd87f8b58d2831676caa813644f060849d66b5f9ab8911a9450fb"

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
