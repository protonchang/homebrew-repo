class LibimobiledeviceGlue10 < Formula
    desc "Library with common code used by the libraries and tools around the libimobiledevice project."
    homepage "https://github.com/libimobiledevice/libimobiledevice-glue"
    url "https://github.com/libimobiledevice/libimobiledevice-glue.git"
    version "1.0.0"
  
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "libplist"
    depends_on "libusb"
  
    def install
      system "./autogen.sh", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make"
      system "make", "install"
    end
  end
