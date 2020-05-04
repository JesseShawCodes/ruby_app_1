class V1::ThingsController < ApplicationController
    def index
        render json: { :things => [
            {
                :name => 'some-thing',
                :guid => '9328501adsgjkahsdg298'
            },
            {
                :name => 'some-thing-else',
                :guid => '9328501adsgjkahsdg2asdgjashdgkja98'
            }
        ]}.to_json
    end
end