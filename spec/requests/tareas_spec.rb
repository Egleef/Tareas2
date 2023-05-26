require 'rails_helper'

RSpec.describe "Tareas", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tareas/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/tareas/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/tareas/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/tareas/show"
      expect(response).to have_http_status(:success)
    end
  end

end
