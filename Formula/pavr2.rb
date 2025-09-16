class Pavr2 < Formula
  desc "Pololu AVR Programmer v2"
  homepage "https://github.com/pololu/pololu-usb-avr-programmer-v2"
  url "https://github.com/pololu/pololu-usb-avr-programmer-v2.git",
      tag:      "1.1.0",
      revision: "66088f743431cf926a73e670484bf33ac71e6fa1"
  license "MIT"
  head "https://github.com/pololu/pololu-usb-avr-programmer-v2.git", branch: "master"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "libusbp"
  depends_on "qt@5"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args,
        "-DCMAKE_POLICY_VERSION_MINIMUM=3.5",
        "-DCMAKE_PREFIX_PATH=#{Formula["qt@5"].opt_prefix}"
      system "make", "install"
    end
  end
end
