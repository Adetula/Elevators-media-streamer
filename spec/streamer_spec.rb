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

    
   

end
