# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Throw < Formula
  desc "Example throw app"
  homepage "https://github.com/shifaz/homebrew-taps"
  url "http://brew.dc.mv/releases/throw-1.0.tar.gz"
  sha256 "2a97b5ef116cfebd97aa6a59a3aeb021cdf1b0abbba481992181a81d45de5445"
  version "1.0"
  # depends_on "cmake" => :build

  def install
    # install hworld script, create symlink to script in /usr/local/bin
    bin.install "throw"
  end

  test do
    # test script output
    assert_equal %x('#{bin}/throw'), "Throw world!\n"
  end

end