class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.5.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.5.0/datasubst-v0.5.0-darwin-amd64.tar.gz'
    sha256 '767876c25997dbb4bc91267bb1fb45c356bfdaaf583366fbde070b71c47891bc'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.5.0/datasubst-v0.5.0-darwin-arm64.tar.gz'
    sha256 '4c17f1883830129794ec97f6e9f88e8aecff24f4cbbe75980340409a5afc5e34'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.5.0/datasubst-v0.5.0-linux-amd64.tar.gz'
    sha256 'be8239a85cca967154d5ec13b826a90e9e313ab534e9bd4e81b2bc61c634d0df'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.5.0/datasubst-v0.5.0-linux-arm.tar.gz'
    sha256 'bf419b846e5a46f2fab5d0cf7406f1a2493235495a3a39af5fdc744f9eb9d73e'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.5.0/datasubst-v0.5.0-linux-arm64.tar.gz'
    sha256 'c02925d4ac3e1d80bf41054512000c5a6a554b1e8db73d66f6beb0387aaa9555'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
