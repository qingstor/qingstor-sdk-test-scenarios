@Metadata
Feature: the Metadata feature

  Scenario Outline:
    # PUT Metadata
    When put Metadata "<key>"
    Then put Metadata status code is 201
    
    # GET Metadata
    When get Metadata "<key>"
    Then get Metadata status code is 200
    
    # DELETE Metadata
    When delete Metadata object "<key>"
    Then delete Metadata object status code is 204

    Examples: Metadata Keys
      | key |
      | test_Metadata |
