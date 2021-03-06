Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = Codebreaker::Game.new(output)
  game.start
end

Then(/^I should see "(.*?)"$/) do |message|
  # output.messages.should include(message)
  output.messages.must_include message
end

Given(/^the secret code is "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I guess "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^the mark should be "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

# just a test double

class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end

end

def output
  @output ||= Output.new
end
