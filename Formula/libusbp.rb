class Libusbp < Formula
  desc "Pololu libusbp library"
  homepage "https://github.com/pololu/libusbp"
  url "https://github.com/pololu/libusbp.git",
      tag:      "1.2.0",
      revision: "e50384137e411913ce9a2da485c4703515d15d15"
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
