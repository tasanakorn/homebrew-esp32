# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class EspIdf < Formula
  desc "ESP-IDF"
  homepage "https://github.com/espressif/esp-idf"
  url "https://github.com/espressif/esp-idf.git", :using => :git, :branch => :master
  depends_on "xtensa-esp32-elf"
  # depends_on "pyserial" => :python
  depends_on :python => ['pyserial']

  def install
    ENV.deparallelize 
    # system "git", "submodule", "update", "--init"

    # libexec.install Dir["*"]
    prefix.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    You may wish to add the ESP-IDF environment (.profile, .bash_profile):
      export IDF_PATH=#{opt_prefix}
    EOS
  end

  # test do
  #   system "false"
  # end
end
