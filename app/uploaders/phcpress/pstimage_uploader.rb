# encoding: utf-8

class Phcpress::PstimageUploader < CarrierWave::Uploader::Base

	# Include RMagick or MiniMagick support:
	# include CarrierWave::RMagick
	# include CarrierWave::MiniMagick

	# Storage Type
	storage :file
	# storage :fog

	# Where files will be uploaded
	def store_dir
		"uploads/#{model.class.to_s.underscore}/#{mounted_as}/"
	end

	# Hash filenames
	def filename
		"#{secure_token}.#{file.extension}" if original_filename.present?
	end

	def extension_white_list
		%w(jpg jpeg gif png)
	end

	protected

	# Secure Token for File Hashing
	def secure_token
		var = :"@#{mounted_as}_secure_token"
		model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
	end

	# Process files as they are uploaded:
	# process :scale => [200, 300]
	#
	# def scale(width, height)
	#   # do something
	# end

	# Create different versions of your uploaded files:
	# version :thumb do
	#   process :resize_to_fit => [50, 50]
	# end

	# Override the filename of the uploaded files:
	# Avoid using model.id or version_name here, see uploader/store.rb for details.
	# def filename
	#   "something.jpg" if original_filename
	# end

end
