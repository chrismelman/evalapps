module webservices/mappers/B
function mapperEditedB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("listc") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property listc", "warning"));
  }
  else
  {
    if ( json.get("listc") == json.NULL )
    {
      ent.listc := null;
    }
    else
    {
      var temp := json.getJSONArray("listc") ;
      var collection := List<C>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("C", obj.getString("id").parseUUID()) as C ) ;
            if ( localent != null )
            {
              collection.add(localent);
            }
            else
            {
              localerrors.put(makeJSONErrorObject("Trying to add non existing object for property: listc", "warning"));
            }
          }
        }
      if ( ent.listc != collection )
      {
        ent.listc := collection;
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
function mapperNewB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedB(ent, json, localerrors);
}