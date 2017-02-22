require "rails_helper"

describe JobsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
# If logged in
  describe "GET #new" do
    #context logged in
    # before that mimic user
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the new job template" do
      get :new
      expect(response).to render_template("new")
    end
    #context if not logged in
  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      get :show
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "shows a specific job" do
      get :show
      expect(response).to render_template("show")
    end
  end

end
