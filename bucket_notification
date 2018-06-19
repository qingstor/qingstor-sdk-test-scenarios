@bucket_notification
Feature: the bucket notification feature

  # PUT Bucket notification
  Scenario: set the bucket notification
    When put bucket notification:
    """
    {
      "notifications": [
        {
          "id": "notification id",
          "event_types": "create_object",
          "cloudfunc": "create_object"
        }
      ]
    }
    """
    Then put bucket notification status code is 200

  # GET Bucket notification
  Scenario: get notification of the bucket
    When get bucket notification
    Then get bucket notification status code is 200
   
  # DELETE Bucket notification
  Scenario: delete notification of the bucket
    When delete bucket notification
    Then delete bucket notification status code is 204
