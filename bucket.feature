@bucket
Feature: the bucket feature

  Scenario: need to use bucket
    When initialize the bucket
    Then the bucket is initialized

  # GET Bucket (List Objects)
  Scenario: list objects in the bucket
    When list objects
    Then list objects status code is 200
    And list objects keys count is 0

  # Head Bucket
  Scenario: head the bucket
    When head bucket
    Then head bucket status code is 200

  # Delete Multiple Objects
  Scenario: delete multiple objects in the bucket
    When delete multiple objects:
    """
    {
      "quiet": false,
      "objects": [
        {
          "key": "object_0"
        },
        {
          "key": "object_1"
        },
        {
          "key": "object_2"
        }
      ]
    }
    """
    Then delete multiple objects code is 200

  # GET Bucket Statistics
  Scenario: get statistics of the bucket
    When get bucket statistics
    Then get bucket statistics status code is 200
    And get bucket statistics status is "active"

  # List Multipart Uploads
  Scenario: list multipart uploads
    Given an object created by initiate multipart upload
    When list multipart uploads
    Then list multipart uploads count is 1
    When list multipart uploads with prefix
    Then list multipart uploads with prefix count is 1
