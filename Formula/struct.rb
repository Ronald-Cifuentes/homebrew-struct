# curl -L https://github.com/Ronald-Cifuentes/homebrew-struct/archive/refs/tags/v1.0.0.tar.gz | shasum -a 256

class Struct < Formula
  desc "A CLI tool to generate folder structures like tree"
  homepage "https://github.com/Ronald-Cifuentes/homebrew-struct"
  url "https://github.com/Ronald-Cifuentes/homebrew-struct/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5e4c5f1ef6323e6ef65345519c6a6c9e85cdcd461832ef1b0f594008544698f3"
  license "MIT"

  def install
    bin.install "bin/struct.sh" => "struct"
  end

  test do
    # Simple test to verify installation
    system "#{bin}/struct", "--help"
  end
end