module webservices/json/B
extend entity B {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.id != null )
    {
      object.put("id", id);
    }
    return object;
  }
  function toJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.listc == null )
    {
      object.put("listc", ( null as JSONObject ));
    }
    else
    {
      var arraylistc := JSONArray() ;
      for ( c_3384 : C in this.listc )
        {
          arraylistc.put(makeJSONObjectFromEntityRef(c_3384));
        }
      object.put("listc", arraylistc);
    }
    if ( this.name == null )
    {
      object.put("name", ( null as JSONObject ));
    }
    else
    {
      object.put("name", this.name);
    }
    if ( this.version == null )
    {
      object.put("version", ( null as JSONObject ));
    }
    else
    {
      object.put("version", this.version);
    }
    if ( this.id == null )
    {
      object.put("id", ( null as JSONObject ));
    }
    else
    {
      object.put("id", this.id);
    }
    return object;
  }
  function toMinimalJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.version != null )
    {
      object.put("version", version);
    }
    if ( this.id != null )
    {
      object.put("id", id);
    }
    return object;
  }
}