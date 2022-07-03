# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Zephyr < Formula
  desc "Zephyr SDK (Toolchains, Development Tools)"
  homepage "https://github.com/zephyrproject-rtos/sdk-ng"
  url "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.14.2/zephyr-sdk-0.14.2_macos-x86_64.tar.gz"
  sha256 "4c9cca0906334577e1c004ca3cfffc836f1114250372ae1ab2c547d173b49484"
  license "Apache-2.0"

  depends_on "cmake"
  depends_on "ninja"
  depends_on "gperf"
  depends_on "python3"
  depends_on "qemu"
  depends_on "dtc"
  depends_on "wget"
  depends_on "libmagic"
  
  def install
    system "./setup.sh -t -c"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sdk-ng`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
