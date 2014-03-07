require 'spec_helper'

describe Task do
  let(:blank_values) { [nil,''] }
  it { should have_valid(:title).when("Seriously, finish breaking bad") }
  it { should_not have_valid(:title).when(*blank_values) }
end
