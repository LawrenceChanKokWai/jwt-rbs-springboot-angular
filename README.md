# UserRoles Table Creation

### This table represents the user_id and the role_id referencing.
Fields used:

* id: Represents the id related to the user_id to the role_id. 
  - [ BIGINT, UNSIGNED, NOT NULL, AUTO_INCREMENT, PRIMARY KEY ]
  
* user_id: Represent the user's id.
  - [BIGINT UNSIGNED NOT NULL]
  
* role_id: Represents the role's id.
  - [BIGINT UNSIGNED NOT NULL]

### Foreign Key
* user_id will reference to User Table (id)
  - [ON DELETE CASCADE ON UPDATE CASCADE]

* role_id will reference to Roles Table (id)
  - [ON DELETE RESTRICT ON UPDATE CASCADE]

### Constrict
user_id will be set as unique constraint: As user_id should only be unique.

* CONSTRAINT UQ_Roles_Name UNIQUE(name)
