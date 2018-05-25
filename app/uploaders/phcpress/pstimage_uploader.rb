class Phcpress::PstimageUploader < CarrierWave::Uploader::Base

	# Storage Type
	storage :file
	# storage :fog

	# Where files will be uploaded
	def store_dir
		"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
	end

	# White List of Safe Extension
	def extension_white_list
		%w(jpg jpeg gif png)
	end

	# Hash filenames
	def filename
		"#{secure_token}.#{file.extension}" if original_filename.present?
	end

	protected

	# Secure Token for File Hashing
	def secure_token
		var = :"@#{mounted_as}_secure_token"
		model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
	end

end
