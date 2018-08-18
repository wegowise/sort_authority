begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require 'ffi-compiler/compile_task'
namespace 'ffi-compile' do
  FFI::Compiler::CompileTask.new('ext/strnatcmp')
end
task :compile => ['ffi-compile:default']

require 'rake/testtask'
Rake::TestTask.new(test: [:clean, :compile]) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end
