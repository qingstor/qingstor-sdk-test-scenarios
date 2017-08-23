@encryption
Feature: the object encryption feature

  Scenario Outline:
    # PUT Object
    When put encryption object "<key>" with "<encryption_algorithm>", "<encryption_key>", "<encryption_key_md5>"
    Then put encryption object status code is 201
    # Copy Object
    When copy encryption object "<key>" with "<encryption_algorithm>", "<encryption_key>", "<encryption_key_md5>"
    Then copy encryption object status code is 201
    # Move Object
    When move encryption object with key "<key>"
    Then move encryption object status code is 201
    # GET Object
    When get encryption object "<key>" with "<encryption_algorithm>", "<encryption_key>", "<encryption_key_md5>"
    Then get encryption object status code is 200
    And get encryption object content length is 1048576
    # Head Object
    When head encryption object with key "<key>" with "<encryption_algorithm>", "<encryption_key>", "<encryption_key_md5>"
    Then head encryption object status code is 200
    # DELETE Object
    When delete encryption object "<key>"
    Then delete encryption object status code is 204
    When delete encryption the move object "<key>"
    Then delete encryption the move object status code is 204

    Examples: Encryption object key and encryption info
      | key | encryption_algorithm | encryption_key | encryption_key_md5 |
      | test_object | AES256 | eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHg= | 3I/h1kl+vSP1l12NKhxegQ== |
