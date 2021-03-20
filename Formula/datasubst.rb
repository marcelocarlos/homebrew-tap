class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.2.1'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-amd64.tar.gz'
    sha256 '9f9f7cde69736e47682f2a0daa3ed09baf36f77250e5bea19f8497e29841fd4f'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-arm64.tar.gz'
    sha256 '6d595c26378f97d98a413d49c4beaea8304f4d5d1974532551fa4ca4da3976ff'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-amd64.tar.gz'
    sha256 'c0d89725894c1a3b9cf5b2cc7d27b337cd941942cf52ea21333eb7c5e0ecb8d4'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-arm.tar.gz'
    sha256 '5a0d8486de230b9eb3c9e43d5346b76318bacf755a051f01822f50aeb70a197b'
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
