class DrivingTime < Formula
  desc 'Driving Time with Live Traffic Data'
  homepage 'https://github.com/ansd/driving-time'
  version '0.3.0'
  if OS.mac?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-darwin-amd64"
    sha256 'a41c972cb1600959ee6569c8736c783f0de8521baba6516cb9c9eb08d170918a'
  elsif OS.linux?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-linux-amd64"
    sha256 '564fa5b51ee3eae814d860eb0d5d82eb5e6e2525423c513defc9e24f47371480'
  end

  depends_on :arch => :x86_64

  def install
    binary_name = 'driving-time'
    if OS.mac?
      bin.install "driving-time-#{version}-darwin-amd64" => binary_name
    elsif OS.linux?
      bin.install "driving-time-#{version}-linux-amd64" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
