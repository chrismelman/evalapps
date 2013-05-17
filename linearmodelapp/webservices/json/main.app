module webservices/json/main
imports webservices/json/A
imports webservices/json/B
imports webservices/json/C
imports webservices/json/D
imports webservices/json/E
imports webservices/json/F
function makeJSONObjectFromEntityRef ( ent : Entity ) : JSONObject
{
  var json := JSONObject() ;
  json.put("id", ent.id);
  return json;
}