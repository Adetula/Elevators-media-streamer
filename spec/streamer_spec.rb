require 'ElevatorMedia/streamer'

describe Streamer do
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
        it "returns a Joke" do
            result = Streamer.getContent("random_joke") 
            expect(result).to include("<label>It is a Joke</label>")
        end
    end

end
