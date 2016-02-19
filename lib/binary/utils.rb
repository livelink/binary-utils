require "binary/utils/version"

module Binary
  module Utils
    module_function
    def hex_to_bin(string)
      as_binary( [string].pack('H*') )
    end

    def bin_to_hex(string)
      as_binary(string).unpack('H*').first
    end

    def as_binary(string)
      string = string.to_s
      if string.respond_to?(:force_encoding)
        string.force_encoding('ASCII-8BIT')
      else
        string
      end
    end
  end
end
