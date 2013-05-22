module webservices/related-entities/B
extend entity B {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    return set;
  }
}