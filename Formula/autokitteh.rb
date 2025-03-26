# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Autokitteh < Formula
  desc "Durable workflow automation in just a few lines of code"
  homepage "https://autokitteh.com/"
  version "0.15.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.7/autokitteh_darwin_x86_64.tar.gz"
      sha256 "dabc97182d5d36c3d44411e8119916d00fc6ef84c31359bbb560ee6a483436d2"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.7/autokitteh_darwin_arm64.tar.gz"
      sha256 "1a4bac242339986b2a0c0caec7369804470f7331ecb0c430c283abb8584d616d"

      def install
        bin.install "ak"
        generate_completions_from_executable(bin/"ak", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.7/autokitteh_linux_x86_64.tar.gz"
        sha256 "042159c4c6b64310dcbb437ff88fb3d26638975182978c740a3f39985df9e02d"

        def install
          bin.install "ak"
          generate_completions_from_executable(bin/"ak", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/autokitteh/autokitteh/releases/download/v0.15.7/autokitteh_linux_arm64.tar.gz"
        sha256 "a2110cdf3a66c52ffb2ce462ede3267ac9d61b660319998db4c0a85e29aa3d75"

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
