require "rails_helper"

describe ApplicationHelper do

  # ------------------------------------------------------------------------------
  #
  # Unit Tests
  #
  # ------------------------------------------------------------------------------

  describe "unit tests", :unit do

    describe "#cdn_image_path" do

      describe "when environment variable has trailing slash and provided relative path has a leading slash" do
        it "returns with single trailing slash" do
          ENV["ASSET_CDN_URL"] = "somelocation.com/cloudfront/"
          expect(helper.cdn_image_path("/folder/file.png").include?("//")).to eq(false), "Expected #cdn_image_path to remove additional slashes"
          expect(helper.cdn_image_path("/folder/file.png").include?("frontfolder")).to eq(false), "Expected #cdn_image_path to retain necessary slashes"
          expect(helper.cdn_image_path("/folder/file.png")).to eq "somelocation.com/cloudfront/folder/file.png"
        end
      end

      describe "when environment variable is missing trailing slash and provided relative path has a leading slash" do
        it "returns with single trailing slash" do
          ENV["ASSET_CDN_URL"] = "somelocation.com/cloudfront"
          expect(helper.cdn_image_path("/folder/file.png").include?("//")).to eq(false), "Expected #cdn_image_path to remove additional slashes"
          expect(helper.cdn_image_path("/folder/file.png").include?("frontfolder")).to eq(false), "Expected #cdn_image_path to retain necessary slashes"
          expect(helper.cdn_image_path("/folder/file.png")).to eq "somelocation.com/cloudfront/folder/file.png"
        end
      end

      describe "when environment variable is missing trailing slash and provided relative path is missing leading slash" do
        it "returns with single trailing slash" do
          ENV["ASSET_CDN_URL"] = "somelocation.com/cloudfront"
          expect(helper.cdn_image_path("folder/file.png").include?("//")).to eq(false), "Expected #cdn_image_path to add additional slashes"
          expect(helper.cdn_image_path("folder/file.png").include?("frontfolder")).to eq(false), "Expected #cdn_image_path to retain necessary slashes"
          expect(helper.cdn_image_path("folder/file.png")).to eq "somelocation.com/cloudfront/folder/file.png"
        end
      end

    end # cdn_image_path

  end # unit tests

end
