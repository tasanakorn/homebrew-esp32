class XtensaEsp32Elf < Formula
  desc "ESP32 toolchain"
  homepage "https://docs.espressif.com/projects/esp-idf/en/latest/get-started/macos-setup.html"
  url "https://dl.espressif.com/dl/xtensa-esp32-elf-gcc8_2_0-esp32-2019r1-macos.tar.gz"
  version "2019r1"
  sha256 "adb256394c948ca424ec6ef1d9bee91baa99a304d8ace8e6701303da952eb007"

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  test do
    system "#{bin}/xtensa-esp32-elf-gcc", "--version"
  end
end
