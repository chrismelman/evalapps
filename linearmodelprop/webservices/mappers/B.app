module webservices/mappers/B
function mapperEditedB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
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