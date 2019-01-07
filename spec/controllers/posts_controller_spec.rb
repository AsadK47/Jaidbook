# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    # it "responds with 200" do
    #   post :create, params: { post: { title: "Some title", body: "Some body" } }
    #   expect(response).to redirect_to('http://test.host/posts/1')
    # end
    #
    # it "creates a post" do
    #   post :create, params: { post: { title: "Some title", body: "Some body"  } }
    #   expect(Post.find_by(title: "Some title", body: "Some body")).to be
    # end
  end
end
