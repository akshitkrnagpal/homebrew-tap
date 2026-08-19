# typed: false
# frozen_string_literal: true

class Namescout < Formula
  desc "Check name availability across domains, npm, and GitHub"
  homepage "https://github.com/akshitkrnagpal/namescout"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.1.0/namescout_0.1.0_darwin_amd64.tar.gz"
      sha256 "179db19c2ea17d43c95d5f9534ef302a1bd76a751864548a9232a568933a04b2"
    elsif Hardware::CPU.arm?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.1.0/namescout_0.1.0_darwin_arm64.tar.gz"
      sha256 "c868fb583f304f4d40bf59ab29c718928278dd22df7d6c2196cc964b71a89af9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.1.0/namescout_0.1.0_linux_amd64.tar.gz"
      sha256 "8b550d4d6b746639c54e51de6215a3928c8f833c6bcc3db194e4250696d739d4"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/akshitkrnagpal/homebrew-tap/releases/download/namescout-v0.1.0/namescout_0.1.0_linux_arm64.tar.gz"
      sha256 "afc487f052eb9bbe954cd4d90695e8647cecfce74cb2363c56f5ffce51f33830"
    end
  end

  def install
    bin.install "namescout"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/namescout --version")
  end
end
