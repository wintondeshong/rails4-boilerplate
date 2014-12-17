require "rails_helper"

describe ErrorsController do

  describe "when unauthenticated" do

    # 404
    # ---

    describe "GET #error_404" do
      it "renders 404 template" do
        get :error_404
        expect(response).to render_template "error_404"
      end
    end


    # 500
    # ---

    describe "GET #error_500" do
      it "renders 500 template" do
        get :error_500
        expect(response).to render_template "error_500"
      end
    end

  end

end
