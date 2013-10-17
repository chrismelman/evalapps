API Webservices Synchronization Framework
==============================================
This document describes the webservices interface that is part of the generated synchronization framework. The goal of this document is explanation of the webservices for usage of 3th party applications.
 
The following information is described in this document:
 
+ General Webservice Information
+ Model Description
+ WebService Description
 
General Webservice Information
---------------------------------
 
The generated services are simple, which means they do not contain many parameters to specify all kind of options on the requested data. The services are meant for synchronization. Nevertheless, they can also be used for requesting of data.

### Interface ###

All the webservices are available through the following link:

	http(s)://<base.url>/webservice/<webservicename>

 
*The services are based on JSON and only support post requests*

The default format for all services is:

| field name | type     | explanation               |
|------------|:--------:|---------------------------|
| errors     | [String] | List of error messages    |
| result     | Any      | the result of the service |

 
### Control Flow ###

The first time using the synchronization the following steps are expected:

+ possible authentication
+ request the toplevel entities for partition selection.
+ request timestamp
+ request for all entities the objects of the selected partitions 
 
Further synchronization contains the following steps:

+ send the new objects to the server
+ send the updates of modified objects to the server
+ request timestamp
+ request for all entities the objects of the selected partitions	
   	
Model Description
-----------------------
This chapter describes the entities that are used as model for the synchronization framework. This can be used to interpret the data of the expected input and output.

*note:  fields with type of other objects contain ref objects of the format:*

| Field | Type   |
|-------|:------:|
| id    | String |

*note2: typeField property contains the actual type as string*
 
###A###
-------	

| Field   | Type   |
|---------|:------:|
| id      | String |
| version | Number |
| list    | [B]    |
| name    | String |
  			


###B###
-------	

| Field   | Type   |
|---------|:------:|
| id      | String |
| version | Number |
| list    | [C]    |
| name    | String |
  			


###C###
-------	

| Field   | Type   |
|---------|:------:|
| id      | String |
| version | Number |
| list    | [D]    |
| name    | String |
  			


###D###
-------	

| Field   | Type   |
|---------|:------:|
| id      | String |
| version | Number |
| list    | [E]    |
| name    | String |
  			


###E###
-------	

| Field   | Type   |
|---------|:------:|
| id      | String |
| version | Number |
| list    | [F]    |
| name    | String |
  			


###F###
-------	

| Field   | Type   |
|---------|:------:|
| id      | String |
| version | Number |
| list    | [B]    |
| name    | String |
  			


WebService Description
-------------------------
This section describes the functionality of each of the available services and the expected in and output.

### getTimeStamp ###
--------------------

This service requests a timestamp from the server which should be used as time reference in the synchronization process.

#### input ####

*none*

#### output ####

| field name | type   | explanation                      |
|------------|:------:|----------------------------------|
| result     | Number | timestamp represented in number  |


### getTopLevelEntities ###
----------------------------

This service requests a simple representation from each of the object that is of a topLevel type.

#### input ####

*none*

#### output ####

| field name | type       | explanation                      |
|------------|:----------:|----------------------------------|
| result     | JSONObject | timestamp represented in number  |

result:
| field name | type         | explanation                                     |
|------------|:------------:|-------------------------------------------------|
| name       | String       | string representation of object type            |
| value      | [JSONObject] | list of object of the type stored in name field |


### syncNewObjects ###
----------------------------

This service allows to send new local objects to the server to persist it in the central application.

#### input ####

	[JSONObject]

| field name | type         | explanation                                          |
|------------|:------------:|------------------------------------------------------|
| name       | String       | string representation of object type                 |
| value      | [JSONObject] | list of new objects of the type stored in name field |
	

#### output ####

| field name | type         | explanation               |
|------------|:------------:|---------------------------|
| errors     | [JSONObject] | errors related to objects |

errors:

| field name | type         | explanation                                     |
|------------|:------------:|-------------------------------------------------|
| errors     | [JSONObject] | list of error messages related to the object    |
| ent        | String       | type of the object it represents                |
| id         | String       | id of the object it represents                  |

errors.errors:
	
| field name | type   | explanation                          |
|------------|:------:|--------------------------------------|
| type       | String | type of error. e.g, warning or error |
| message    | String | the message of the error             |


### syncDirtyObjects ###
----------------------------

This service allows to send local changes on objects to the server to persist it in the central application.

#### input ####

	[JSONObject]

| field name | type         | explanation                                          |
|------------|:------------:|------------------------------------------------------|
| name       | String       | string representation of object type                 |
| value      | [JSONObject] | list of new objects of the type stored in name field |
	

#### output ####

| field name | type         | explanation               |
|------------|:------------:|---------------------------|
| errors     | [JSONObject] | errors related to objects |

errors:

| field name | type         | explanation                                                                   |
|------------|:------------:|-------------------------------------------------------------------------------|
| errors     | [JSONObject] | list of error messages related to the object                                  |
| ent        | String       | type of the object it represents                                              |
| id         | String       | id of the object it represents                                                |
| restore    | JSONObject   | servers representation of the object to restore local object to correct state |

errors.errors:

| field name | type   | explanation                          |
|------------|:------:|--------------------------------------|
| type       | String | type of error. e.g, warning or error |
| message    | String | the message of the error             |

### syncA ###
-------------
This service enable to request all changed object of type A of the givens partitions with their last synchronization timestamp.

#### input ####
	[JSONObject]
	
| field name | type         | explanation                                  |
|------------|:------------:|----------------------------------------------|
| name       | String       | type of objects in value                     |
| value      | [JSONObject] | list of objects representing data partitions |

value:

| field name | type   | explanation                                             |
|------------|:------:|---------------------------------------------------------|
| id         | String | id of object representing a selected data partition    |
| lastSynced | Number | timestamp of previous synchronization of this partition |

#### output ####

| field name | type         | explanation                                                                   |
|------------|:------------:|-------------------------------------------------------------------------------|
| result     | [JSONObject] | list of all changed objects of type A from the selected partitions |	

### syncB ###
-------------
This service enable to request all changed object of type B of the givens partitions with their last synchronization timestamp.

#### input ####
	[JSONObject]
	
| field name | type         | explanation                                  |
|------------|:------------:|----------------------------------------------|
| name       | String       | type of objects in value                     |
| value      | [JSONObject] | list of objects representing data partitions |

value:

| field name | type   | explanation                                             |
|------------|:------:|---------------------------------------------------------|
| id         | String | id of object representing a selected data partition    |
| lastSynced | Number | timestamp of previous synchronization of this partition |

#### output ####

| field name | type         | explanation                                                                   |
|------------|:------------:|-------------------------------------------------------------------------------|
| result     | [JSONObject] | list of all changed objects of type B from the selected partitions |	

### syncC ###
-------------
This service enable to request all changed object of type C of the givens partitions with their last synchronization timestamp.

#### input ####
	[JSONObject]
	
| field name | type         | explanation                                  |
|------------|:------------:|----------------------------------------------|
| name       | String       | type of objects in value                     |
| value      | [JSONObject] | list of objects representing data partitions |

value:

| field name | type   | explanation                                             |
|------------|:------:|---------------------------------------------------------|
| id         | String | id of object representing a selected data partition    |
| lastSynced | Number | timestamp of previous synchronization of this partition |

#### output ####

| field name | type         | explanation                                                                   |
|------------|:------------:|-------------------------------------------------------------------------------|
| result     | [JSONObject] | list of all changed objects of type C from the selected partitions |	

### syncD ###
-------------
This service enable to request all changed object of type D of the givens partitions with their last synchronization timestamp.

#### input ####
	[JSONObject]
	
| field name | type         | explanation                                  |
|------------|:------------:|----------------------------------------------|
| name       | String       | type of objects in value                     |
| value      | [JSONObject] | list of objects representing data partitions |

value:

| field name | type   | explanation                                             |
|------------|:------:|---------------------------------------------------------|
| id         | String | id of object representing a selected data partition    |
| lastSynced | Number | timestamp of previous synchronization of this partition |

#### output ####

| field name | type         | explanation                                                                   |
|------------|:------------:|-------------------------------------------------------------------------------|
| result     | [JSONObject] | list of all changed objects of type D from the selected partitions |	

### syncE ###
-------------
This service enable to request all changed object of type E of the givens partitions with their last synchronization timestamp.

#### input ####
	[JSONObject]
	
| field name | type         | explanation                                  |
|------------|:------------:|----------------------------------------------|
| name       | String       | type of objects in value                     |
| value      | [JSONObject] | list of objects representing data partitions |

value:

| field name | type   | explanation                                             |
|------------|:------:|---------------------------------------------------------|
| id         | String | id of object representing a selected data partition    |
| lastSynced | Number | timestamp of previous synchronization of this partition |

#### output ####

| field name | type         | explanation                                                                   |
|------------|:------------:|-------------------------------------------------------------------------------|
| result     | [JSONObject] | list of all changed objects of type E from the selected partitions |	

### syncF ###
-------------
This service enable to request all changed object of type F of the givens partitions with their last synchronization timestamp.

#### input ####
	[JSONObject]
	
| field name | type         | explanation                                  |
|------------|:------------:|----------------------------------------------|
| name       | String       | type of objects in value                     |
| value      | [JSONObject] | list of objects representing data partitions |

value:

| field name | type   | explanation                                             |
|------------|:------:|---------------------------------------------------------|
| id         | String | id of object representing a selected data partition    |
| lastSynced | Number | timestamp of previous synchronization of this partition |

#### output ####

| field name | type         | explanation                                                                   |
|------------|:------------:|-------------------------------------------------------------------------------|
| result     | [JSONObject] | list of all changed objects of type F from the selected partitions |	

