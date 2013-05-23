module webservices/json/main
imports webservices/json/A
imports webservices/json/B
function makeJSONObjectFromEntityRef ( ent : Entity ) : JSONObject
{
  var json := JSONObject() ;
  json.put("id", ent.id);
  return json;
}