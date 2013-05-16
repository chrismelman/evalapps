module webservices/mappers/C
function mapperEditedC ( ent : C , json : JSONObject , localerrors : JSONArray ) : Void
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
function mapperNewC ( ent : C , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedC(ent, json, localerrors);
}