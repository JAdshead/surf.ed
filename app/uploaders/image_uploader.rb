# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  include CarrierWave::MimeTypes
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file
  process :set_content_type
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url  
    ActionController::Base.helpers.asset_path "placeholder.png" 
  end

  version :thumb do
    process :resize_to_fit => [200, 200]
  end

  version :avatar_resize do
    process :resize_to_fill => [120, 120]
  end

end
