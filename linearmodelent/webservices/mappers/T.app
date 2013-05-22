module webservices/mappers/T
function mapperEditedT ( ent : T , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("list") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property list", "warning"));
  }
  else
  {
    if ( json.get("list") == json.NULL )
    {
      ent.list := null;
    }
    else
    {
      var temp := json.getJSONArray("list") ;
      var collection := List<U>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("U", obj.getString("id").parseUUID()) as U ) ;
            if ( localent != null )
            {
              collection.add(localent);
            }
            else
            {
              localerrors.put(makeJSONErrorObject("Trying to add non existing object for property: list", "warning"));
            }
          }
        }
      if ( ent.list != collection )
      {
        ent.list := collection;
      }
    }
  }
  if ( ! json.has("name") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property name", "warning"));
  }
  else
  {
    if ( json.get("name") == json.NULL )
    {
      ent.name := null;
    }
    else
    {
      ent.name := json.getString("name");
    }
  }
}
function mapperNewT ( ent : T , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedT(ent, json, localerrors);
}