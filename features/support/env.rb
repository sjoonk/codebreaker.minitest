$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
require 'codebreaker'

require 'minitest/spec'
World(MiniTest::Assertions)
MiniTest::Spec.new(nil)

