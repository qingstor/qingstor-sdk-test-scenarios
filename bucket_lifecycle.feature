@bucket_lifecycle
Feature: the bucket lifecycle feature

  # PUT Bucket lifecycle
  Scenario: set the bucket lifecycle
    When put bucket lifecycle:
    """
    {
      "rule": [
        {
          "id": "abort-multipart-upload-in-data",
          "status": "enabled",
          "filter": {
            "prefix": "data/",
            "abort_incomplete_multipart_upload": {
              "days_after_initiation": 3
            }
          }
        }
      ]
    }
    """
    Then put bucket lifecycle status code is 200

  # GET Bucket lifecycle
  Scenario: get lifecycle of the bucket
    When get bucket lifecycle
    Then get bucket lifecycle status code is 200
    And get bucket lifecycle should have filter prefix "data/"
    
  # DELETE Bucket lifecycle
  Scenario: delete lifecycle of the bucket
    When delete bucket lifecycle
    Then delete bucket lifecycle status code is 204
