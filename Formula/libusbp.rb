class Libusbp < Formula
  desc "Pololu libusbp library"
  homepage "https://github.com/pololu/libusbp"
  url "https://github.com/pololu/libusbp.git",
      tag:      "1.3.0",
      revision: "c7b11568708822bd7c1151a11f44fc317f4b64e4"
  license "MIT"
  head "https://github.com/pololu/libusbp.git", branch: "master"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end
