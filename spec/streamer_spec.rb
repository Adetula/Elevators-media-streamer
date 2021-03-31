require 'ElevatorMedia/streamer'

describe Streamer do

    describe "getContent" do
      
        it "this is a string" do
            streamerOne = Streamer.new
            valium = streamerOne.getContent()
            expect(valium).to be_a(String)
        end
    

        it "returns an html tag as per requirement" do
            streamOne = Streamer.new
            valium = streamOne.getContent()
            expect(valium).to start_with "<div>"
            expect(valium).to end_with "</div>"
        end

        context "This test checks if api url is correct in relation with the action" do
            it "returns covid is real" do
                result = Streamer.getContent("https://localcoviddata.com/covid19/v1/cases/covidTracking?state=CA&daysInPast=7") 
                expect(result).to include("<label>Covid is real</label>")
            end
        end
    end
end
