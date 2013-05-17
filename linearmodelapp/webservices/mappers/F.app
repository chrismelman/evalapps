module webservices/mappers/F
function mapperEditedF ( ent : F , json : JSONObject , localerrors : JSONArray ) : Void
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
function mapperNewF ( ent : F , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedF(ent, json, localerrors);
}