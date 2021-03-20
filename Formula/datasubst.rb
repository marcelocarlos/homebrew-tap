class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.2.1'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-amd64.tar.gz'
    sha256 'a9de8e8f9d8294a90140858dbbb33f86e57f1de72d93e1dca388e6567eae3217'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-arm64.tar.gz'
    sha256 '0f84affd958831175b2dc09b9f613029dce91fcf9bad74a70ccaebb15f77a198'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-amd64.tar.gz'
    sha256 '167fdb74c42f7579377c54a413c1a0a37119c5092af109ae873759c6987ec8d8'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-arm.tar.gz'
    sha256 'b389434ea0c0941fb700f69b20b62310f6aaca37fd8eafefbbec4d141fa64a21'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-arm64.tar.gz'
    sha256 ''
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
