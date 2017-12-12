require 'rails_helper'

RSpec.describe Post, :type => :model do
  it { should respond_to :content }
  it { should have_many(:comments) }
  it { should belong_to(:author) }
end
