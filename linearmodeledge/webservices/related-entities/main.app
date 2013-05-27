module webservices/related-entities/main
imports webservices/related-entities/A
imports webservices/related-entities/B
imports webservices/related-entities/C
imports webservices/related-entities/D
imports webservices/related-entities/E
imports webservices/related-entities/F
function getSetWhereNotSeen ( set : Set<Entity> , seen : Set<UUID> , add : Set<Entity> ) : Set<Entity>
{
  var newset := Set<Entity>() ;
  for ( ent : Entity in add )
    {
      var inSeen := ent.id in seen ;
      if ( ! inSeen )
      {
        newset.add(ent);
        seen.add(ent.id);
      }
    }
  return newset;
}
function isTopLevelEntity ( ent : Entity ) : Bool
{
  return isTopLevelEntity(ent.getTypeString());
}
function isTopLevelEntity ( str : String ) : Bool
{
  var toplevelEntities := {"A"} ;
  return str in toplevelEntities;
}
function getRelatedEntities ( ent : Entity ) : Set<Entity>
{
  var type := ent.getTypeString() ;
  if ( type == "A" )
  {
    return ( ent as A ).getRelatedEntities();
  }
  if ( type == "B" )
  {
    return ( ent as B ).getRelatedEntities();
  }
  if ( type == "C" )
  {
    return ( ent as C ).getRelatedEntities();
  }
  if ( type == "D" )
  {
    return ( ent as D ).getRelatedEntities();
  }
  if ( type == "E" )
  {
    return ( ent as E ).getRelatedEntities();
  }
  if ( type == "F" )
  {
    return ( ent as F ).getRelatedEntities();
  }
  return Set<Entity>();
}
function getAllAForTopEntity ( tl : Entity ) : Set<A>
{
  if ( tl.getTypeString() == "A" )
  {
    return {( tl as A )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<A>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "A" )
            {
              found.add(( ent as A ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllBForTopEntity ( tl : Entity ) : Set<B>
{
  if ( tl.getTypeString() == "B" )
  {
    return {( tl as B )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<B>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "B" )
            {
              found.add(( ent as B ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllCForTopEntity ( tl : Entity ) : Set<C>
{
  if ( tl.getTypeString() == "C" )
  {
    return {( tl as C )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<C>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "C" )
            {
              found.add(( ent as C ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllDForTopEntity ( tl : Entity ) : Set<D>
{
  if ( tl.getTypeString() == "D" )
  {
    return {( tl as D )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<D>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "D" )
            {
              found.add(( ent as D ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllEForTopEntity ( tl : Entity ) : Set<E>
{
  if ( tl.getTypeString() == "E" )
  {
    return {( tl as E )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<E>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "E" )
            {
              found.add(( ent as E ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllFForTopEntity ( tl : Entity ) : Set<F>
{
  if ( tl.getTypeString() == "F" )
  {
    return {( tl as F )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<F>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "F" )
            {
              found.add(( ent as F ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}