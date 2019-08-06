class DrivingTime < Formula
  desc 'Driving Time with Live Traffic Data'
  homepage 'https://github.com/ansd/driving-time'
  version '0.4.0'
  if OS.mac?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-darwin-amd64"
    sha256 '13599ae0fa7dbc3cbd39aa67e4f6ea2ce001d4e9d5fd8ca9caa30f5734dd3f4f'
  elsif OS.linux?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-linux-amd64"
    sha256 '0d72e497a9df00eeca884fe61054673683ea25fcfe568293c24d83a1ef005ed5'
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
