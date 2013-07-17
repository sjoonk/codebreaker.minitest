$LOAD_PATH << File.expand_path('../../lib', __FILE__)
require 'codebreaker'

require 'minitest/autorun'
require 'turn'

Turn.config.format = :outline
