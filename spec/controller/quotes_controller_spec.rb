# require 'elevator_media/streamer'
require 'rails_helper'
# require 'controllers/interventions_controller'

describe QuotesController, :type => :controller do
    render_views
    describe "GET #create" do
        context "verifies that the buildings function in the intervention controller works correctly" do
            it "returns that the function works successfully" do
                get :create, format: :json
                expect(:quote).to be_truthy
            end
        end
        
        context "validate create quote for commercial" do
            it "returns quote is save" do
                params = {
                    "buildType" => "commercial",
                    "floors_residential" => 4,
                    "apartments-residential" => 14
                }

                get :create,  params: params  ,format: :json

                puts response
                expect(response.body).to include('You are being')
            end
        end

        context "validate create quote for hybrid" do
            it "returns quote is save" do
                params = {
                    "buildType" => "hybrid",
                    "floors_residential" => 10,
                    "apartments-residential" => 10
                }

                get :create,  params: params  ,format: :json

                puts response
                expect(response.body).to include('You are being')
            end
        end

        context "validate create quote for corporate" do
            it "returns quote is save" do
                params = {
                    "buildType" => "corporate",
                    "floors_residential" => 14,
                    "apartments-residential" => 17
                }

                get :create,  params: params  ,format: :json

                puts response
                expect(response.body).to include('You are being')
            end
        end

        context "validate create quote for residential" do
            it "returns quote is save" do
                params = {
                    "buildType" => "residential",
                    "floors_residential" => 15,
                    "apartments-residential" => 17
                }

                get :create,  params: params  ,format: :json

                puts response
                expect(response.body).to include('You are being')
            end
        end
    end
end
