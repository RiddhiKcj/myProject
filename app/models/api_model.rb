class ApiModel < ApplicationRecord
    require 'rest-client'
    
    @data
    def self.getData
        apiObj = ApiModel.first
        response = RestClient.get(apiObj.api_url)   
        
    end

    def self.retrieve_results
        
        p "***************************************"
        p @data
        p "***************************************"

        return @data
    end

    def self.init_results
        @data = JSON.parse(ApiModel.getData)
    end
end
ApiModel.init_results

