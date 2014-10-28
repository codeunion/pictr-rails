# encoding: utf-8

class ImageUploader < Carrierwave::Uploader::Base

  Include Carrierwave::RMagick

  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end