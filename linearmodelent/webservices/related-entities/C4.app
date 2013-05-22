module webservices/related-entities/C4
extend entity C4 {
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