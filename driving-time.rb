class DrivingTime < Formula
  desc 'Driving Time with Live Traffic Data'
  homepage 'https://github.com/ansd/driving-time'
  version '0.2.0'
  if OS.mac?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-darwin-amd64"
    sha256 '82e7acac31c197f4855116c1af326b4d383e7dca1c72ef809372f0d01fcdd0c5'
  elsif OS.linux?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-linux-amd64"
    sha256 'ac1fcf0eae7d6db35479189c3a3b6ec510b5453802d3b6874bd20bf4b760e3a5'
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
