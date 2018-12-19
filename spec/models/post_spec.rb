require 'rails_helper'
require 'pry'

RSpec.describe Post, type: :model do
  it { is_expected.to be }

  it "shows error when title has less than 3 characters" do
    post = Post.new
    post.title = "Hey"
    expect(post.title.length).to be > 2
  end

  it "shows error when body has less than 1 character" do
    post = Post.new
    post.body = "I"
    expect(post.body.length).to be > 0
  end
end
