require 'google/apis/vision_v1'

class LookupController < ApplicationController
  # GET /image.json
  def index
    Vision = Google::Apis::VisionV1 # Alias the module
    service = Vision::VisionService.new
  end
end
