# typed: false
# frozen_string_literal: true

class Namescout < Formula
  desc "Check name availability across domains, npm, and GitHub"
  homepage "https://github.com/akshitkrnagpal/namescout"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.2.0/namescout_0.2.0_darwin_amd64.tar.gz"
      sha256 "3f6f795ac2260dd4a8f14a4d9425d399a3fdf6d346b7ebc1be64ecfc07c90556"
    elsif Hardware::CPU.arm?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.2.0/namescout_0.2.0_darwin_arm64.tar.gz"
      sha256 "8e8a46af1e1e1235a3279b8e6998f07084301f9970bae920680c398320cfdec8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.2.0/namescout_0.2.0_linux_amd64.tar.gz"
      sha256 "10f7637eb9fc82cd91d5e9d90814c920982cb92033de24fc5e613aaa1684c176"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.2.0/namescout_0.2.0_linux_arm64.tar.gz"
      sha256 "5d5046bb71cb9598658fa69e8fef2a22c337526e3375a699bffdd6fd2f220cd5"
    end
  end

  def install
    bin.install "namescout"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/namescout --version")
  end
end
