#!/usr/bin/ruby

main_folder_path = "add_paht_here/"
Dir.entries(main_folder_path).each do |folder_path|
	fullMainPath =  main_folder_path + folder_path

	if File.directory?(fullMainPath) 
		Dir.entries(fullMainPath).each do |f|
			fullFilePath =  fullMainPath + "/" + f
			
				if fullFilePath.include? ".png.jpg"
					newFullFilePath = fullFilePath.sub(".png.jpg", ".jpg")
					File.rename fullFilePath, newFullFilePath	
					puts newFullFilePath
				end
		end
	end
end

