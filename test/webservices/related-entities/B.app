module webservices/related-entities/B
extend entity B {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    if ( this.listc != null )
    {
      set.addAll(this.listc);
    }
    return set;
  }
}