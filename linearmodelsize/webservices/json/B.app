module webservices/json/B
extend entity B {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.prop5 != null )
    {
      object.put("prop5", prop5);
    }
    if ( this.prop4 != null )
    {
      object.put("prop4", prop4);
    }
    if ( this.prop3 != null )
    {
      object.put("prop3", prop3);
    }
    if ( this.prop2 != null )
    {
      object.put("prop2", prop2);
    }
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
    if ( this.prop5 == null )
    {
      object.put("prop5", ( null as JSONObject ));
    }
    else
    {
      object.put("prop5", this.prop5);
    }
    if ( this.prop4 == null )
    {
      object.put("prop4", ( null as JSONObject ));
    }
    else
    {
      object.put("prop4", this.prop4);
    }
    if ( this.prop3 == null )
    {
      object.put("prop3", ( null as JSONObject ));
    }
    else
    {
      object.put("prop3", this.prop3);
    }
    if ( this.prop2 == null )
    {
      object.put("prop2", ( null as JSONObject ));
    }
    else
    {
      object.put("prop2", this.prop2);
    }
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