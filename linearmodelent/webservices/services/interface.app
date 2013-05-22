module webservices/services/interface
imports webservices/services/getTimeStamp
imports webservices/services/getTopLevelEntities
imports webservices/services/syncA
imports webservices/services/syncA1
imports webservices/services/syncA2
imports webservices/services/syncA3
imports webservices/services/syncA4
imports webservices/services/syncB
imports webservices/services/syncB1
imports webservices/services/syncB2
imports webservices/services/syncB3
imports webservices/services/syncB4
imports webservices/services/syncC
imports webservices/services/syncC1
imports webservices/services/syncC2
imports webservices/services/syncC3
imports webservices/services/syncC4
imports webservices/services/syncD
imports webservices/services/syncD1
imports webservices/services/syncD2
imports webservices/services/syncD3
imports webservices/services/syncD4
imports webservices/services/syncDirtyObjects
imports webservices/services/syncE
imports webservices/services/syncE1
imports webservices/services/syncE2
imports webservices/services/syncE3
imports webservices/services/syncE4
imports webservices/services/syncF
imports webservices/services/syncF1
imports webservices/services/syncF2
imports webservices/services/syncF3
imports webservices/services/syncF4
imports webservices/services/syncG
imports webservices/services/syncG1
imports webservices/services/syncG2
imports webservices/services/syncG3
imports webservices/services/syncG4
imports webservices/services/syncH
imports webservices/services/syncH1
imports webservices/services/syncH2
imports webservices/services/syncH3
imports webservices/services/syncH4
imports webservices/services/syncI
imports webservices/services/syncI1
imports webservices/services/syncI2
imports webservices/services/syncI3
imports webservices/services/syncI4
imports webservices/services/syncJ
imports webservices/services/syncJ1
imports webservices/services/syncJ2
imports webservices/services/syncJ3
imports webservices/services/syncJ4
imports webservices/services/syncK
imports webservices/services/syncK1
imports webservices/services/syncK2
imports webservices/services/syncK3
imports webservices/services/syncK4
imports webservices/services/syncL
imports webservices/services/syncL1
imports webservices/services/syncL2
imports webservices/services/syncL3
imports webservices/services/syncL4
imports webservices/services/syncM
imports webservices/services/syncM1
imports webservices/services/syncM2
imports webservices/services/syncM3
imports webservices/services/syncM4
imports webservices/services/syncN
imports webservices/services/syncN1
imports webservices/services/syncN2
imports webservices/services/syncN3
imports webservices/services/syncN4
imports webservices/services/syncNewObjects
imports webservices/services/syncO
imports webservices/services/syncO1
imports webservices/services/syncO2
imports webservices/services/syncO3
imports webservices/services/syncO4
imports webservices/services/syncP
imports webservices/services/syncP1
imports webservices/services/syncP2
imports webservices/services/syncP3
imports webservices/services/syncP4
imports webservices/services/syncQ
imports webservices/services/syncQ1
imports webservices/services/syncQ2
imports webservices/services/syncQ3
imports webservices/services/syncQ4
imports webservices/services/syncR
imports webservices/services/syncR1
imports webservices/services/syncR2
imports webservices/services/syncR3
imports webservices/services/syncS
imports webservices/services/syncS1
imports webservices/services/syncS2
imports webservices/services/syncS3
imports webservices/services/syncT
imports webservices/services/syncT1
imports webservices/services/syncT2
imports webservices/services/syncT3
imports webservices/services/syncU
imports webservices/services/syncU1
imports webservices/services/syncU2
imports webservices/services/syncU3
imports webservices/services/syncV
imports webservices/services/syncV1
imports webservices/services/syncV2
imports webservices/services/syncV3
imports webservices/services/syncW
imports webservices/services/syncW1
imports webservices/services/syncW2
imports webservices/services/syncW3
imports webservices/services/syncX
imports webservices/services/syncX1
imports webservices/services/syncX2
imports webservices/services/syncX3
imports webservices/services/syncY
imports webservices/services/syncY1
imports webservices/services/syncY2
imports webservices/services/syncY3
imports webservices/services/syncZ
imports webservices/services/syncZ1
imports webservices/services/syncZ2
imports webservices/services/syncZ3
imports webservices/services/test
imports webservices/related-entities/main
imports webservices/access-control/main
imports webservices/mappers/main
imports webservices/json/main
native class DispatchServletHelper as DispatchServletHelper : DispatchServlet
{
getResponse ( ) : HttpServletResponse
  forwardRequest ( String )
  static get ( ) : DispatchServlet
}
function getDispatchServletHelper ( ) : DispatchServletHelper
{
  var servlet := DispatchServletHelper.get() ;
  if ( servlet is a DispatchServletHelper )
  {
    return ( servlet as DispatchServletHelper );
  }
  else
  {
    return null;
  }
}
function getAvailableServices ( ) : Set<String>
{
  return {"syncNewObjects", "syncDirtyObjects", "syncQ4", "syncP4", "syncO4", "syncN4", "syncM4", "syncL4", "syncK4", "syncJ4", "syncI4", "syncH4", "syncG4", "syncF4", "syncE4", "syncD4", "syncC4", "syncB4", "syncA4", "syncZ3", "syncY3", "syncX3", "syncW3", "syncV3", "syncU3", "syncT3", "syncS3", "syncR3", "syncQ3", "syncP3", "syncO3", "syncN3", "syncM3", "syncL3", "syncK3", "syncJ3", "syncI3", "syncH3", "syncG3", "syncF3", "syncE3", "syncD3", "syncC3", "syncB3", "syncA3", "syncZ2", "syncY2", "syncX2", "syncW2", "syncV2", "syncU2", "syncT2", "syncS2", "syncR2", "syncQ2", "syncP2", "syncO2", "syncN2", "syncM2", "syncL2", "syncK2", "syncJ2", "syncI2", "syncH2", "syncG2", "syncF2", "syncE2", "syncD2", "syncC2", "syncB2", "syncA2", "syncZ1", "syncY1", "syncX1", "syncW1", "syncV1", "syncU1", "syncT1", "syncS1", "syncR1", "syncQ1", "syncP1", "syncO1", "syncN1", "syncM1", "syncL1", "syncK1", "syncJ1", "syncI1", "syncH1", "syncG1", "syncF1", "syncE1", "syncD1", "syncC1", "syncB1", "syncA1", "syncZ", "syncY", "syncX", "syncW", "syncV", "syncU", "syncT", "syncS", "syncR", "syncQ", "syncP", "syncO", "syncN", "syncM", "syncL", "syncK", "syncJ", "syncI", "syncH", "syncG", "syncF", "syncE", "syncD", "syncC", "syncB", "syncA", "getTimeStamp", "test", "getTopLevelEntities"};
}
service webservice ( service : String )
{
  if ( service in getAvailableServices() )
  {
    getDispatchServletHelper().forwardRequest("/webservice_generated_" + service + "/");
  }
  else
  {
    var json := JSONObject() ;
    var errors := JSONArray() ;
    errors.put("service " + service + " does not exist");
    json.put("errors", errors);
    return json;
  }
}
function addDirtyFalse ( json : JSONObject ) : JSONObject
{
  json.put("dirty", "false");
  return json;
}
function makeJSONErrorObject ( message : String , type : String ) : JSONObject
{
  var json := JSONObject() ;
  json.put("message", message);
  json.put("type", type);
  return json;
}
function makeJSONEntityErrorObject ( errors : JSONArray , ent : String , id : String ) : JSONObject
{
  var json := JSONObject() ;
  json.put("errors", errors);
  json.put("ent", ent);
  json.put("id", id);
  return json;
}
function addValidationExceptionsToLocalErrors ( errors : List<NativeValidationException> , localErrors : JSONArray ) : Void
{
  for ( ex : NativeValidationException in errors )
    {
      localErrors.put(makeJSONErrorObject(ex.getErrorMessage(), "error"));
    }
}
function addValidateExceptionsToErrors ( exceptions : ValidationExceptionMultiple , errors : JSONArray ) : Void
{
  for ( ex : ValidationException in exceptions.exceptions )
    {
      errors.put(makeJSONErrorObject(ex.message, "error"));
    }
}
function containsErrorInJSONArray ( array : JSONArray ) : Bool
{
  for ( count : Int from 0 to array.length() )
    {
      if ( array.getJSONObject(count).getString("type") == "error" )
      {
        return true;
      }
    }
  return false;
}