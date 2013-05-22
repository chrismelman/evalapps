module webservices/related-entities/Z2
extend entity Z2 {
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