# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class XtensaEsp32Elf < Formula
  desc "ESP32 toolchain"
  homepage ""
  url "https://dl.espressif.com/dl/xtensa-esp32-elf-osx-1.22.0-59.tar.gz"
  version "1.22.0"
  sha256 "95abdd14b49056ba63981f590f7e54a54b846ab93dc38b81c1f098a240e1599d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  # test do
  #   system "false"
  # end
end
