require 'google/apis/vision_v1'
Vision = Google::Apis::VisionV1 # Alias the module

class Api::V1::LookupController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:image]

  def image
    service = Vision::VisionService.new

    service.key = YAML.load_file(Rails.root.join('config/google_cloud_api.yml'))[Rails.env]['google_cloud_api_key']

    image = Vision::Image.new(content: params["image"].tempfile.open.to_a.join)
    features = [Vision::Feature.new(max_results: 6, type: "TEXT_DETECTION"), Vision::Feature.new(max_results: 6, type: "LOGO_DETECTION")]
    annotate_image = Vision::AnnotateImageRequest.new(image: image, features: features)
    batch_annotate = Vision::BatchAnnotateImagesRequest.new(requests: [annotate_image])

    vision_response = service.annotate_image(batch_annotate)

    # def clearUp(string)
    # end

    # @brands = Brand.all
    # binding.pry

    # If all goes well...
    response = {}
    if vision_response.responses[0].text_annotations
        response["text"] = vision_response.responses[0].text_annotations[0].description
    end
    if vision_response.responses[0].logo_annotations
        response["logo"] = vision_response.responses[0].logo_annotations[0].description
    end

    if (response['logo'])
        brand_name = response['logo']

        if Brand.where(:name => brand_name ).exists?
            render partial: '_good', local { brand_name: brand_name }
        else
            @brands = Brand.limit(3)
            render partial: '_alternative', local { brand_name: brand_name }
            #send altervative items
        end
    else
        # Code for only text detected from images with no logo.
    end
    # render json: response
  end
end
