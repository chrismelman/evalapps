module webservices/mappers/J4
function mapperEditedJ4 ( ent : J4 , json : JSONObject , localerrors : JSONArray ) : Void
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
      var collection := List<K4>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("K4", obj.getString("id").parseUUID()) as K4 ) ;
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
function mapperNewJ4 ( ent : J4 , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedJ4(ent, json, localerrors);
}