module webservices/related-entities/X
extend entity X {
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