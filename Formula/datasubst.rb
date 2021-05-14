class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.6.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.6.0/datasubst-v0.6.0-darwin-amd64.tar.gz'
    sha256 'fcf47b87924af051aae5577bdfcdcbe254a5d96eb5f509397a06cc379dd36c8a'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.6.0/datasubst-v0.6.0-darwin-arm64.tar.gz'
    sha256 'ffdfc966932bb7c058867905082b9ba217232ceae88023cce7605dfbd7c36967'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.6.0/datasubst-v0.6.0-linux-amd64.tar.gz'
    sha256 'a3cdddafdf22a1e1767d3b8ed0d4ac4fc64925fe9bad02a98df661b10f4eadc7'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.6.0/datasubst-v0.6.0-linux-arm.tar.gz'
    sha256 'dfb1d5173cf558031a47a06731aa612aafbbe7cd980638ee4b0d2fcc5953d1ca'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.6.0/datasubst-v0.6.0-linux-arm64.tar.gz'
    sha256 '550fa2c71a86817b8836d2b333a73c45a16daee7da1cf45796ea5e1574728413'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
