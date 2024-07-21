# Roles Table Creation

### This table represents the name and the permission of a role.
Fields used:

* id: Represents the id related to the role. 
  - [ BIGINT, UNSIGNED, NOT NULL, AUTO_INCREMENT, PRIMARY KEY ]
  
* name: Represent the role's name.
  - [VARCHAR(50) NOT NULL]
  
* permission: Represents the role's permission.
  - [VARCHAR(255) NOT NULL]

### Constrict
Role name will be set as unique constraint: As role name should only be unique.

* CONSTRAINT UQ_Roles_Name UNIQUE(name)
