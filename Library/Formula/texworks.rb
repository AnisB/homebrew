require 'formula'

class TexWorks < Formula
  homepage 'http://code.google.com/p/texworks/'
  url 'https://github.com/mxcl/homebrew/archive/master.zip'

  depends_on 'git'
  depends_on 'pkg-config'
  depends_on 'cmake'
  depends_on 'qt'
  depends_on 'hunspell'
  depends_on 'poppler'

  def install
    system "mkdir build"
    system "cd build"
    system "cmake .."
    system "make"
    ENV.deparallelize
    system "make install"
  end
end