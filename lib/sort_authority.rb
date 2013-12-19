require 'ffi'
require 'ffi-compiler/loader'

module SortAuthority
  extend FFI::Library
  ffi_lib FFI::Compiler::Loader.find('strnatcmp')
  attach_function :strnatcmp, [:pointer, :pointer], :int

  class StringExpected < StandardError
    def initialize(value)
      super("#{value.inspect} is not a string.")
    end
  end

  def self.ensure_strings(enum)
    enum.each { |val| raise StringExpected, val unless val.instance_of?(String) }
  end
end
