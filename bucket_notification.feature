@bucket_notification
Feature: the bucket notification feature

  # PUT Bucket notification
  Scenario: set the bucket notification
    When put bucket notification:
    """
    {
      "notifications": [
        {
          "id": "notification-1",
          "event_types": [
            "create_object"
          ]
          "cloudfunc": "notifier",
          "object_filters": [
            "*"
          ],
          "notify_url": "http://user_notify_url"
        }
      ]
    }
    """
    Then put bucket notification status code is 200

  # GET Bucket notification
  Scenario: get notification of the bucket
    When get bucket notification
    Then get bucket notification status code is 200
    And get bucket notification should have cloudfunc "notifier"
   
  # DELETE Bucket notification
  Scenario: delete notification of the bucket
    When delete bucket notification
    Then delete bucket notification status code is 204
