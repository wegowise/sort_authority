require 'ffi'
require 'ffi-compiler/loader'

module SortAuthority
  extend FFI::Library
  ffi_lib FFI::Compiler::Loader.find('strnatcmp')
  attach_function :strnatcmp, [:pointer, :pointer], :int
end
