require 'nokogiri'
require 'open-uri'
require 'json'
require 'rest-client'

require 'ElevatorMedia/streamer'


describe Streamer do 

    describe "getContent" do


        # context "This test verifies if url is not provided" do
        #     it "returns RuntimeError" do
        #         expect { Streamer.getContent() }.to raise_error { |error|
        #             expect(error).to be_a(RuntimeError)
        #         }
        #     end

        # end

        context "This test checks if api url is correct in relation with the action" do
            it "returns bitcoin" do
                result = Streamer.getContent("bitcoin") 
                expect(results).to include("<label>bitcoin</label>")
            end
        end

        context "Test a wrong api url" do
            it "returns SocketError" do
                expect { Streamer.getContent("wrongurl") }.to raise_error { |error|
                    expect(error).to be_a(SocketError)
                }
            end
        end
        
    end

end