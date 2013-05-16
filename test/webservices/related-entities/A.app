module webservices/related-entities/A
extend entity A {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    if ( this.listb != null )
    {
      set.addAll(this.listb);
    }
    return set;
  }
}