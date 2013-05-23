module webservices/json/B
extend entity B {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.prop1 != null )
    {
      object.put("prop1", prop1);
    }
    if ( this.id != null )
    {
      object.put("id", id);
    }
    return object;
  }
  function toJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.prop1 == null )
    {
      object.put("prop1", ( null as JSONObject ));
    }
    else
    {
      object.put("prop1", this.prop1);
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