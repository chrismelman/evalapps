module webservices/mappers/Q4
function mapperEditedQ4 ( ent : Q4 , json : JSONObject , localerrors : JSONArray ) : Void
{
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
function mapperNewQ4 ( ent : Q4 , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedQ4(ent, json, localerrors);
}