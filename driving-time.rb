class DrivingTime < Formula
  desc 'Driving Time with Live Traffic Data'
  homepage 'https://github.com/ansd/driving-time'
  version '0.1.0'
  if OS.mac?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-darwin-amd64"
    sha256 'cb7f5401a540cfa75a9161c446aedd42c42d4ac45893f333f5499ed1afeda334'
  elsif OS.linux?
    url "https://github.com/ansd/driving-time/releases/download/v#{version}/driving-time-#{version}-linux-amd64"
    sha256 'c3590a85b2a3a61c8597480e5eb680e32e00368d4743549e63e4a58d23ade45d'
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
