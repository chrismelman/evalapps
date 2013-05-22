module webservices/services/syncNewObjects
service webservice_generated_syncNewObjects ( )
{
  var json := JSONObject() ;
  var errors := JSONArray() ;
  var request := JSONArray(readRequestBody()) ;
  var result := JSONArray() ;
  var rollback := false ;
  if ( request != null )
  {
    for ( count : Int from 0 to request.length() )
      {
        var jsontemp := request.getJSONObject(count) ;
        var kind := jsontemp.getString("name") ;
        var entities := jsontemp.getJSONArray("value") ;
        if ( jsontemp != null && kind != null && entities != null )
        {
          if ( kind == "A" )
          {
            if ( A.mayCreateSynchronize() )
            {
              for ( count : Int from 0 to entities.length() )
                {
                  var localErrors := JSONArray() ;
                  var entity := A{id := entities.getJSONObject(count).getString("id").parseUUID()} ;
                  if ( entity != null )
                  {
                    entity.save();
                  }
                  else
                  {
                    errors.put("object has no id");
                  }
                }
            }
            else
            {
              errors.put("not allowed to create A");
            }
          }
          else
          {
            if ( kind == "B" )
            {
              if ( B.mayCreateSynchronize() )
              {
                for ( count : Int from 0 to entities.length() )
                  {
                    var localErrors := JSONArray() ;
                    var entity := B{id := entities.getJSONObject(count).getString("id").parseUUID()} ;
                    if ( entity != null )
                    {
                      entity.save();
                    }
                    else
                    {
                      errors.put("object has no id");
                    }
                  }
              }
              else
              {
                errors.put("not allowed to create B");
              }
            }
            else
            {
              errors.put("type is undefined: " + kind);
            }
          }
        }
        else
        {
          errors.put("not valid parameter format missing/incorrect value/name/object");
        }
      }
    for ( count : Int from 0 to request.length() )
      {
        var jsontemp := request.getJSONObject(count) ;
        var kind := jsontemp.getString("name") ;
        var entities := jsontemp.getJSONArray("value") ;
        if ( jsontemp != null && kind != null && entities != null )
        {
          if ( kind == "A" )
          {
            if ( A.mayCreateSynchronize() )
            {
              for ( count : Int from 0 to entities.length() )
                {
                  var localErrors := JSONArray() ;
                  var entity := ( loadEntity("A", entities.getJSONObject(count).getString("id").parseUUID()) as A ) ;
                  if ( entity == null )
                  {
                    localErrors.put(makeJSONErrorObject("Object does not exist", "warning"));
                  }
                  else
                  {
                    mapperNewA(entity, entities.getJSONObject(count), localErrors);
                    var exceptions := entity.validateSave() ;
                    addValidateExceptionsToErrors(exceptions, localErrors);
                  }
                  if ( localErrors.length() > 0 )
                  {
                    rollback := true;
                    var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "A", entities.getJSONObject(count).getString("id")) ;
                    errors.put(jsonErrorObject);
                  }
                }
            }
          }
          else
          {
            if ( kind == "B" )
            {
              if ( B.mayCreateSynchronize() )
              {
                for ( count : Int from 0 to entities.length() )
                  {
                    var localErrors := JSONArray() ;
                    var entity := ( loadEntity("B", entities.getJSONObject(count).getString("id").parseUUID()) as B ) ;
                    if ( entity == null )
                    {
                      localErrors.put(makeJSONErrorObject("Object does not exist", "warning"));
                    }
                    else
                    {
                      mapperNewB(entity, entities.getJSONObject(count), localErrors);
                      var exceptions := entity.validateSave() ;
                      addValidateExceptionsToErrors(exceptions, localErrors);
                    }
                    if ( localErrors.length() > 0 )
                    {
                      rollback := true;
                      var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "B", entities.getJSONObject(count).getString("id")) ;
                      errors.put(jsonErrorObject);
                    }
                  }
              }
            }
            else
            {
              errors.put("type is undefined: " + kind);
            }
          }
        }
        else
        {
          errors.put("not valid parameter format missing/incorrect value/name/object");
        }
      }
  }
  else
  {
    errors.put("not valid parameter format");
  }
  if ( rollback )
  {
    rollbackAndStartNewTransaction();
  }
  json.put("errors", errors);
  json.put("result", result);
  return json;
}