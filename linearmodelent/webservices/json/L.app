module webservices/json/L
extend entity L {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.name != null )
    {
      object.put("name", name);
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
    if ( this.list == null )
    {
      object.put("list", ( null as JSONObject ));
    }
    else
    {
      var arraylist := JSONArray() ;
      for ( m_0 : M in this.list )
        {
          arraylist.put(makeJSONObjectFromEntityRef(m_0));
        }
      object.put("list", arraylist);
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