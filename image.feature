@image
Feature: The basic image processing feature

	# Initialized Image
	Scenario Outline: Need to initialize image
 		When initialize image by the image's address "<address>"   
		Then The image is initialized
		
		Examples:
		| address |
		| test.jpg |
	# Crop the image
	Scenario Outline: Used to crop the image feature 
		When crop the image with keys <cropWidth>, <cropHeight>, <cropGravity> 
		Then crop the image status code is 200
		
		Examples:
		|cropWidth|cropHeight|cropGravity|
		|300|400|0|
		|300|800|0|
	# Format the image
	Scenario Outline: Used to format the image feature
		When format the image with Type "<formatType>" 
		Then format the image status code is 200
	
		Examples:
			|formatType|
			|png|
			|webp|
			|jpeg|
			|gif|
	# Resize the image 
	Scenario Outline: Used to resize the image feature
		When resize the image with keys <resizeWidth>, <resizeHeight>, <resizeMode>
		Then resize the image status code is 200

		Examples:
			|resizeWidth|resizeHeight|resizeMode|
			|300|400|0|
	
	# Rotate the image
	Scenario Outline: Used to rotate the image feature
		When rotate the image with Angle <angle>
		Then rotate the image status code is 200	

		Examples:
			|angle|
			|90|

	## TODO: Watermark, WatermarkImage without float type's args
	# Watermark the image
	Scenario Outline: Used to watermark the image feature
		When watermark the image with keys <dpi>, "<text>", "<color>"  
		Then watermark the image status code is 200
		
		Examples:
			|dpi|text|color|
			|0|5rC05Y2w5paH5a2X||


	# WaterMarkImage the image
	Scenario Outline: Used to watermarkImage the image feature
		When watermarkImage the image with keys <left>, <top>, "<url>" 
		Then watermarkImage the image status code is 200
	
		Examples:
			|left|top|url|
			|0|0|aHR0cHM6Ly9wZWszYS5xaW5nc3Rvci5jb20vaW1nLWRvYy1lZy9xaW5jbG91ZC5wbmc=|
	# Delete test image
	Scenario: Delete test image feature
		When delete the image
		Then delete the image status code is 204

