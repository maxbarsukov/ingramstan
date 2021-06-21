# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file
  # storage :fog

  process resize_to_fill: [1080, 1080]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  version :thumb do
    process resize_to_fill: [70, 70]
  end

  version :small_thumb, from_version: :thumb do
    process resize_to_fill: [40, 40]
  end

  version :profile_thumb do
    process resize_to_fill: [300, 300]
  end

  def extension_white_list
    %w[jpg jpeg gif png]
  end

  def default_url
    'default_avatar.jpg'
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
