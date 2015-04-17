require "spec_helper"

describe ErrorsController do

  # ------------------------------------------------------------------------------
  #
  # Integration Tests
  #
  # ------------------------------------------------------------------------------

  describe "integration tests", :integration do

    describe "routing" do

      describe "#error_404" do
        it "/errors/error_404 routes to #error_404" do
          expect(:get => "/errors/error_404").to route_to("errors#error_404")
        end
      end

      describe "#error_500" do
        it "/errors/error_500 routes to #error_500" do
          expect(:get => "/errors/error_500").to route_to("errors#error_500")
        end
      end

    end

  end

end
