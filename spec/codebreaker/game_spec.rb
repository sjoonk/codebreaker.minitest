require 'spec_helper'

module Codebreaker

  describe Game do
    describe "#start" do

      it "sends a welcome message" do
        # output = double('output')
        # output = mock!.puts('Welcome to Codebreaker!').subject
        mock(output = Object.new).puts('Welcome to Codebreaker!')
        # mock(output = Object.new).puts(anything).times(2)
        game = Game.new(output)
        # output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start
      end

      # it "prompts for the first guess" do
      #   mock(output = Object.new).puts('Enter guess:')
      #   game = Game.new(output)
      #   game.start
      # end
    end

  end

end
