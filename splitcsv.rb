class CsvSplitter < Formula
  desc "CLI application that splits a CSV file into multiple files"
  homepage "https://github.com/augustdev/splitcsv"
  version "0.0.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/AugustDev/splitcsv/releases/download/0.0.1/splitcsv_darwin_arm64"
      sha256 "e4778502dfc0444c2ddcf8e755b5be2b09a19676f5d3471f82d4cc1e1a42aae8" 
    else
      url "https://github.com/AugustDev/splitcsv/releases/download/0.0.1/splitcsv_darwin_amd64"
      sha256 "dbc565c8c7365b8231f2e709b433d212799f7139c3925b3f26884ac9f295b849a" 
    end
  end

  def install
    bin.install Dir["*"].first => "splitcsv"
  end

  test do
    system "#{bin}/splitcsv", "--help"
  end
end
