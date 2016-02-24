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

	# White List of Safe Extension
	def extension_white_list
		%w(jpg jpeg gif png)
	end

	# Upload Different Image Sizes
	version :thubnail do
		process :resize_to_fit => [250, 250]
	end

	version :large do
		process :resize_to_fit => [850, 650]
	end

	version :medium do
		process :resize_to_fit => [500, 400]
	end

	version :slimwide do
		process :resize_to_fit => [1040, 450]
	end

	version :orginal do
	end

	protected

	# Secure Token for File Hashing
	def secure_token
		var = :"@#{mounted_as}_secure_token"
		model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
	end

end
