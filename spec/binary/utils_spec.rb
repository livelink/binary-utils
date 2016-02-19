require 'spec_helper'
require 'digest/md5'

describe Binary::Utils do
  it 'has a version number' do
    expect(Binary::Utils::VERSION).not_to be nil
  end

  it 'converts a hexstring to binary' do
    expect("A").to eq( Binary::Utils.hex_to_bin("41"))
  end

  it 'converts a hexdigest to match digest' do
    expect(Digest::MD5.digest("foo")).to eq( Binary::Utils.hex_to_bin(Digest::MD5.hexdigest("foo")))
  end

  it 'converts a digest to match hexdigest' do
    expect(Digest::MD5.hexdigest("foo")).to eq( Binary::Utils.bin_to_hex(Digest::MD5.digest("foo")))
  end
end
