@image
Feature: The basic image processing feature

  Scenario Outline: 
    When image process with key "<key>" and query "<query>" 
    Then image process status code is 200 
	
    # The test.jpg is located in the fixtures directory.
    Examples:
      | key | query |
      | test.jpg | info |
      | test.jpg | crop:w_300 |
      | test.jpg | crop:w_300,h_400 |
      | test.jpg | crop:w_300,h_400,g_0 |
      | test.jpg | crop:w_300,h_400,g_1 |
      | test.jpg | crop:w_300,h_400,g_2 |
      | test.jpg | rotate:a_90 |
      | test.jpg | rotate:a_180 | 
      | test.jpg | rotate:a_270 | 
      | test.jpg | resize:w_500,h_500 |
      | test.jpg | resize:w_500,h_500,m_2 |
      | test.jpg | watermark:t_5rC05Y2w5paH5a2X,p_0.5 |
      | test.jpg | watermark:t_5rC05Y2w5paH5a2X,p_0.5,d_150 |
      | test.jpg | watermark_image:u_aHR0cHM6Ly9wZWszYS5xaW5nc3Rvci5jb20vaW1nLWRvYy1lZy9xaW5jbG91ZC5wbmc,l_10,t_10,p_2 |
      | test.jpg | format:t_jpeg |
      | test.jpg | format:t_png |
      | test.jpg | format:t_webp |
      | test.jpg | format:t_tiff |
      | test.jpg | crop:w_300\|rotate:a_90\|resize:h_200\|watermark:t_5rC05Y2w5paH5a2X,p_0.5,d_150\|format:t_png |
      | test.jpg | crop:w_300\|rotate:a_90\|resize:h_200\|watermark:t_5rC05Y2w5paH5a2X,p_0.5,d_150\|format:t_png\|info |
