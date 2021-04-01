require 'nokogiri'
require 'open-uri'
require 'json'
require 'rest-client'

require 'ElevatorMedia/streamer'


describe Streamer do 

    describe "getContent" do

        context "Check the retuned value" do
            it "check if the returned value containt a html tags" do
              
              streamer  = Streamer.new 
              result = streamer.getContent("activity")
              puts result

              expect(result).to  start_with("<div style='margin:0 auto; width:80%'>")
              expect(result).to  end_with("</div>")

            end
            it "check if the returned value is not empty" do
                streamer  = Streamer.new 
                result = streamer.getContent("activity")
                puts result

                expect(result.length).to be > 0
          
            end
            it "check if the returned value is a string" do
                streamer  = Streamer.new 
                result = streamer.getContent("activity")
                puts result

                expect(result).to be_an_instance_of(String)
            end

            it "check if the returned value comtains the word activity" do
                streamer  = Streamer.new 
                result = streamer.getContent("activity")
                puts result

                expect(result).to include("Activity")
            end

            it "check if the returned value comtains an argument" do
                streamer  = Streamer.new 
                expect { streamer.getContent()}.to raise_error { |error|
                               expect(error).to be_a(RuntimeError)}

            end
  
        end
        
        
    end

end