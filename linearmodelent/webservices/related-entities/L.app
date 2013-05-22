module webservices/related-entities/L
extend entity L {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    if ( this.list != null )
    {
      set.addAll(this.list);
    }
    return set;
  }
}