module webservices/related-entities/D1
extend entity D1 {
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