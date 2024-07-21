# Users Table Creation

### This table represents and holds the users information
Fields used:

* id: Represents the id related to the user. 
  - [ BIGINT, UNSIGNED, NOT NULL, AUTO_INCREMENT, PRIMARY KEY ]
  
* first_name: Represents the user's first name.
  - [VARCHAR(50) NOT NULL]
  
* last_name: Represents the user's last name.
  - [VARCHAR(50) NOT NULL]
  
* email: Represents the user's email address.
    - [VARCHAR(100) NOT NULL]
  
* password: Represents the user's password used for the application.
    - [VARCHAR(255) DEFAULT NULL]
  
* address: Represents the user's address.
    - [VARCHAR(255) DEFAULT NULL]

* phone: Represents the user's phone number.
    - [VARCHAR(30) DEFAULT NULL]

* title: Represents the title of the user.
    - [VARCHAR(50) DEFAULT NULL]

* bio: Represents the user's bio.
    - [VARCHAR(255) DEFAULT NULL]

* enabled: Represents if user is enabled. Default as FALSE.
    - [BOOLEAN DEFAULT FALSE]

* non_locked: Represents if user is not locked. Default as TRUE.
    - [BOOLEAN DEFAULT TRUE]

* using_mfa: Represents if the user has enabled mfa. Default as FALSE.
    - [BOOLEAN DEFAULT FALSE]

* created_at: Represents when this account has been created by the user.
    - [DATETIME DEFAULT CURRENT_TIMESTAMP]

* image_url: Represents the user's image. Default image has been set.
    - [VARCHAR(255) DEFAULT 'image default url']


### Constrict
Users Email will be set as unique constraint: As email of user should only be unique.

* CONSTRAINT UQ_Users_Email UNIQUE(email)
