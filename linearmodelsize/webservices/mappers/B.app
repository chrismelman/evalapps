module webservices/mappers/B
function mapperEditedB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("prop5") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property prop5", "warning"));
  }
  else
  {
    if ( json.get("prop5") == json.NULL )
    {
      ent.prop5 := null;
    }
    else
    {
      ent.prop5 := json.getString("prop5");
    }
  }
  if ( ! json.has("prop4") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property prop4", "warning"));
  }
  else
  {
    if ( json.get("prop4") == json.NULL )
    {
      ent.prop4 := null;
    }
    else
    {
      ent.prop4 := json.getString("prop4");
    }
  }
  if ( ! json.has("prop3") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property prop3", "warning"));
  }
  else
  {
    if ( json.get("prop3") == json.NULL )
    {
      ent.prop3 := null;
    }
    else
    {
      ent.prop3 := json.getString("prop3");
    }
  }
  if ( ! json.has("prop2") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property prop2", "warning"));
  }
  else
  {
    if ( json.get("prop2") == json.NULL )
    {
      ent.prop2 := null;
    }
    else
    {
      ent.prop2 := json.getString("prop2");
    }
  }
  if ( ! json.has("prop1") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property prop1", "warning"));
  }
  else
  {
    if ( json.get("prop1") == json.NULL )
    {
      ent.prop1 := null;
    }
    else
    {
      ent.prop1 := json.getString("prop1");
    }
  }
}
function mapperNewB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedB(ent, json, localerrors);
}