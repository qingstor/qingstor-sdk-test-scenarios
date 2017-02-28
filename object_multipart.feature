@object_multipart
Feature: the object multipart feature

  Scenario Outline:
    # Initiate Multipart Upload
    When initiate multipart upload with key "<key>"
    Then initiate multipart upload status code is 200

    # Upload Multipart
    When upload the first part with key "<key>"
    Then upload the first part status code is 201
    When upload the second part with key "<key>"
    Then upload the second part status code is 201
    When upload the third part with key "<key>"
    Then upload the third part status code is 201

    # List Multipart
    When list multipart with key "<key>"
    Then list multipart status code is 200
    And list multipart object parts count is 3

    # Complete Multipart Upload
    When complete multipart upload with key "<key>"
    Then complete multipart upload status code is 201

    # Abort Multipart Upload
    When abort multipart upload with key "<key>"
    Then abort multipart upload status code is 400

    # DELETE Object
    When delete the multipart object with key "<key>"
    Then delete the multipart object status code is 204

    Examples: Object keys
      | key |
      # ASCII
      | test_object_multipart |
      # Non-ASCII
      | 中文分块测试 |
      | 田中さんにあげて下さいブロック |
