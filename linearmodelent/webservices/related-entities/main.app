module webservices/related-entities/main
imports webservices/related-entities/A
imports webservices/related-entities/A1
imports webservices/related-entities/A2
imports webservices/related-entities/A3
imports webservices/related-entities/A4
imports webservices/related-entities/B
imports webservices/related-entities/B1
imports webservices/related-entities/B2
imports webservices/related-entities/B3
imports webservices/related-entities/B4
imports webservices/related-entities/C
imports webservices/related-entities/C1
imports webservices/related-entities/C2
imports webservices/related-entities/C3
imports webservices/related-entities/C4
imports webservices/related-entities/D
imports webservices/related-entities/D1
imports webservices/related-entities/D2
imports webservices/related-entities/D3
imports webservices/related-entities/D4
imports webservices/related-entities/E
imports webservices/related-entities/E1
imports webservices/related-entities/E2
imports webservices/related-entities/E3
imports webservices/related-entities/E4
imports webservices/related-entities/F
imports webservices/related-entities/F1
imports webservices/related-entities/F2
imports webservices/related-entities/F3
imports webservices/related-entities/F4
imports webservices/related-entities/G
imports webservices/related-entities/G1
imports webservices/related-entities/G2
imports webservices/related-entities/G3
imports webservices/related-entities/G4
imports webservices/related-entities/H
imports webservices/related-entities/H1
imports webservices/related-entities/H2
imports webservices/related-entities/H3
imports webservices/related-entities/H4
imports webservices/related-entities/I
imports webservices/related-entities/I1
imports webservices/related-entities/I2
imports webservices/related-entities/I3
imports webservices/related-entities/I4
imports webservices/related-entities/J
imports webservices/related-entities/J1
imports webservices/related-entities/J2
imports webservices/related-entities/J3
imports webservices/related-entities/J4
imports webservices/related-entities/K
imports webservices/related-entities/K1
imports webservices/related-entities/K2
imports webservices/related-entities/K3
imports webservices/related-entities/K4
imports webservices/related-entities/L
imports webservices/related-entities/L1
imports webservices/related-entities/L2
imports webservices/related-entities/L3
imports webservices/related-entities/L4
imports webservices/related-entities/M
imports webservices/related-entities/M1
imports webservices/related-entities/M2
imports webservices/related-entities/M3
imports webservices/related-entities/M4
imports webservices/related-entities/N
imports webservices/related-entities/N1
imports webservices/related-entities/N2
imports webservices/related-entities/N3
imports webservices/related-entities/N4
imports webservices/related-entities/O
imports webservices/related-entities/O1
imports webservices/related-entities/O2
imports webservices/related-entities/O3
imports webservices/related-entities/O4
imports webservices/related-entities/P
imports webservices/related-entities/P1
imports webservices/related-entities/P2
imports webservices/related-entities/P3
imports webservices/related-entities/P4
imports webservices/related-entities/Q
imports webservices/related-entities/Q1
imports webservices/related-entities/Q2
imports webservices/related-entities/Q3
imports webservices/related-entities/Q4
imports webservices/related-entities/R
imports webservices/related-entities/R1
imports webservices/related-entities/R2
imports webservices/related-entities/R3
imports webservices/related-entities/S
imports webservices/related-entities/S1
imports webservices/related-entities/S2
imports webservices/related-entities/S3
imports webservices/related-entities/T
imports webservices/related-entities/T1
imports webservices/related-entities/T2
imports webservices/related-entities/T3
imports webservices/related-entities/U
imports webservices/related-entities/U1
imports webservices/related-entities/U2
imports webservices/related-entities/U3
imports webservices/related-entities/V
imports webservices/related-entities/V1
imports webservices/related-entities/V2
imports webservices/related-entities/V3
imports webservices/related-entities/W
imports webservices/related-entities/W1
imports webservices/related-entities/W2
imports webservices/related-entities/W3
imports webservices/related-entities/X
imports webservices/related-entities/X1
imports webservices/related-entities/X2
imports webservices/related-entities/X3
imports webservices/related-entities/Y
imports webservices/related-entities/Y1
imports webservices/related-entities/Y2
imports webservices/related-entities/Y3
imports webservices/related-entities/Z
imports webservices/related-entities/Z1
imports webservices/related-entities/Z2
imports webservices/related-entities/Z3
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
  if ( type == "G" )
  {
    return ( ent as G ).getRelatedEntities();
  }
  if ( type == "H" )
  {
    return ( ent as H ).getRelatedEntities();
  }
  if ( type == "I" )
  {
    return ( ent as I ).getRelatedEntities();
  }
  if ( type == "J" )
  {
    return ( ent as J ).getRelatedEntities();
  }
  if ( type == "K" )
  {
    return ( ent as K ).getRelatedEntities();
  }
  if ( type == "L" )
  {
    return ( ent as L ).getRelatedEntities();
  }
  if ( type == "M" )
  {
    return ( ent as M ).getRelatedEntities();
  }
  if ( type == "N" )
  {
    return ( ent as N ).getRelatedEntities();
  }
  if ( type == "O" )
  {
    return ( ent as O ).getRelatedEntities();
  }
  if ( type == "P" )
  {
    return ( ent as P ).getRelatedEntities();
  }
  if ( type == "Q" )
  {
    return ( ent as Q ).getRelatedEntities();
  }
  if ( type == "R" )
  {
    return ( ent as R ).getRelatedEntities();
  }
  if ( type == "S" )
  {
    return ( ent as S ).getRelatedEntities();
  }
  if ( type == "T" )
  {
    return ( ent as T ).getRelatedEntities();
  }
  if ( type == "U" )
  {
    return ( ent as U ).getRelatedEntities();
  }
  if ( type == "V" )
  {
    return ( ent as V ).getRelatedEntities();
  }
  if ( type == "W" )
  {
    return ( ent as W ).getRelatedEntities();
  }
  if ( type == "X" )
  {
    return ( ent as X ).getRelatedEntities();
  }
  if ( type == "Y" )
  {
    return ( ent as Y ).getRelatedEntities();
  }
  if ( type == "Z" )
  {
    return ( ent as Z ).getRelatedEntities();
  }
  if ( type == "A1" )
  {
    return ( ent as A1 ).getRelatedEntities();
  }
  if ( type == "B1" )
  {
    return ( ent as B1 ).getRelatedEntities();
  }
  if ( type == "C1" )
  {
    return ( ent as C1 ).getRelatedEntities();
  }
  if ( type == "D1" )
  {
    return ( ent as D1 ).getRelatedEntities();
  }
  if ( type == "E1" )
  {
    return ( ent as E1 ).getRelatedEntities();
  }
  if ( type == "F1" )
  {
    return ( ent as F1 ).getRelatedEntities();
  }
  if ( type == "G1" )
  {
    return ( ent as G1 ).getRelatedEntities();
  }
  if ( type == "H1" )
  {
    return ( ent as H1 ).getRelatedEntities();
  }
  if ( type == "I1" )
  {
    return ( ent as I1 ).getRelatedEntities();
  }
  if ( type == "J1" )
  {
    return ( ent as J1 ).getRelatedEntities();
  }
  if ( type == "K1" )
  {
    return ( ent as K1 ).getRelatedEntities();
  }
  if ( type == "L1" )
  {
    return ( ent as L1 ).getRelatedEntities();
  }
  if ( type == "M1" )
  {
    return ( ent as M1 ).getRelatedEntities();
  }
  if ( type == "N1" )
  {
    return ( ent as N1 ).getRelatedEntities();
  }
  if ( type == "O1" )
  {
    return ( ent as O1 ).getRelatedEntities();
  }
  if ( type == "P1" )
  {
    return ( ent as P1 ).getRelatedEntities();
  }
  if ( type == "Q1" )
  {
    return ( ent as Q1 ).getRelatedEntities();
  }
  if ( type == "R1" )
  {
    return ( ent as R1 ).getRelatedEntities();
  }
  if ( type == "S1" )
  {
    return ( ent as S1 ).getRelatedEntities();
  }
  if ( type == "T1" )
  {
    return ( ent as T1 ).getRelatedEntities();
  }
  if ( type == "U1" )
  {
    return ( ent as U1 ).getRelatedEntities();
  }
  if ( type == "V1" )
  {
    return ( ent as V1 ).getRelatedEntities();
  }
  if ( type == "W1" )
  {
    return ( ent as W1 ).getRelatedEntities();
  }
  if ( type == "X1" )
  {
    return ( ent as X1 ).getRelatedEntities();
  }
  if ( type == "Y1" )
  {
    return ( ent as Y1 ).getRelatedEntities();
  }
  if ( type == "Z1" )
  {
    return ( ent as Z1 ).getRelatedEntities();
  }
  if ( type == "A2" )
  {
    return ( ent as A2 ).getRelatedEntities();
  }
  if ( type == "B2" )
  {
    return ( ent as B2 ).getRelatedEntities();
  }
  if ( type == "C2" )
  {
    return ( ent as C2 ).getRelatedEntities();
  }
  if ( type == "D2" )
  {
    return ( ent as D2 ).getRelatedEntities();
  }
  if ( type == "E2" )
  {
    return ( ent as E2 ).getRelatedEntities();
  }
  if ( type == "F2" )
  {
    return ( ent as F2 ).getRelatedEntities();
  }
  if ( type == "G2" )
  {
    return ( ent as G2 ).getRelatedEntities();
  }
  if ( type == "H2" )
  {
    return ( ent as H2 ).getRelatedEntities();
  }
  if ( type == "I2" )
  {
    return ( ent as I2 ).getRelatedEntities();
  }
  if ( type == "J2" )
  {
    return ( ent as J2 ).getRelatedEntities();
  }
  if ( type == "K2" )
  {
    return ( ent as K2 ).getRelatedEntities();
  }
  if ( type == "L2" )
  {
    return ( ent as L2 ).getRelatedEntities();
  }
  if ( type == "M2" )
  {
    return ( ent as M2 ).getRelatedEntities();
  }
  if ( type == "N2" )
  {
    return ( ent as N2 ).getRelatedEntities();
  }
  if ( type == "O2" )
  {
    return ( ent as O2 ).getRelatedEntities();
  }
  if ( type == "P2" )
  {
    return ( ent as P2 ).getRelatedEntities();
  }
  if ( type == "Q2" )
  {
    return ( ent as Q2 ).getRelatedEntities();
  }
  if ( type == "R2" )
  {
    return ( ent as R2 ).getRelatedEntities();
  }
  if ( type == "S2" )
  {
    return ( ent as S2 ).getRelatedEntities();
  }
  if ( type == "T2" )
  {
    return ( ent as T2 ).getRelatedEntities();
  }
  if ( type == "U2" )
  {
    return ( ent as U2 ).getRelatedEntities();
  }
  if ( type == "V2" )
  {
    return ( ent as V2 ).getRelatedEntities();
  }
  if ( type == "W2" )
  {
    return ( ent as W2 ).getRelatedEntities();
  }
  if ( type == "X2" )
  {
    return ( ent as X2 ).getRelatedEntities();
  }
  if ( type == "Y2" )
  {
    return ( ent as Y2 ).getRelatedEntities();
  }
  if ( type == "Z2" )
  {
    return ( ent as Z2 ).getRelatedEntities();
  }
  if ( type == "A3" )
  {
    return ( ent as A3 ).getRelatedEntities();
  }
  if ( type == "B3" )
  {
    return ( ent as B3 ).getRelatedEntities();
  }
  if ( type == "C3" )
  {
    return ( ent as C3 ).getRelatedEntities();
  }
  if ( type == "D3" )
  {
    return ( ent as D3 ).getRelatedEntities();
  }
  if ( type == "E3" )
  {
    return ( ent as E3 ).getRelatedEntities();
  }
  if ( type == "F3" )
  {
    return ( ent as F3 ).getRelatedEntities();
  }
  if ( type == "G3" )
  {
    return ( ent as G3 ).getRelatedEntities();
  }
  if ( type == "H3" )
  {
    return ( ent as H3 ).getRelatedEntities();
  }
  if ( type == "I3" )
  {
    return ( ent as I3 ).getRelatedEntities();
  }
  if ( type == "J3" )
  {
    return ( ent as J3 ).getRelatedEntities();
  }
  if ( type == "K3" )
  {
    return ( ent as K3 ).getRelatedEntities();
  }
  if ( type == "L3" )
  {
    return ( ent as L3 ).getRelatedEntities();
  }
  if ( type == "M3" )
  {
    return ( ent as M3 ).getRelatedEntities();
  }
  if ( type == "N3" )
  {
    return ( ent as N3 ).getRelatedEntities();
  }
  if ( type == "O3" )
  {
    return ( ent as O3 ).getRelatedEntities();
  }
  if ( type == "P3" )
  {
    return ( ent as P3 ).getRelatedEntities();
  }
  if ( type == "Q3" )
  {
    return ( ent as Q3 ).getRelatedEntities();
  }
  if ( type == "R3" )
  {
    return ( ent as R3 ).getRelatedEntities();
  }
  if ( type == "S3" )
  {
    return ( ent as S3 ).getRelatedEntities();
  }
  if ( type == "T3" )
  {
    return ( ent as T3 ).getRelatedEntities();
  }
  if ( type == "U3" )
  {
    return ( ent as U3 ).getRelatedEntities();
  }
  if ( type == "V3" )
  {
    return ( ent as V3 ).getRelatedEntities();
  }
  if ( type == "W3" )
  {
    return ( ent as W3 ).getRelatedEntities();
  }
  if ( type == "X3" )
  {
    return ( ent as X3 ).getRelatedEntities();
  }
  if ( type == "Y3" )
  {
    return ( ent as Y3 ).getRelatedEntities();
  }
  if ( type == "Z3" )
  {
    return ( ent as Z3 ).getRelatedEntities();
  }
  if ( type == "A4" )
  {
    return ( ent as A4 ).getRelatedEntities();
  }
  if ( type == "B4" )
  {
    return ( ent as B4 ).getRelatedEntities();
  }
  if ( type == "C4" )
  {
    return ( ent as C4 ).getRelatedEntities();
  }
  if ( type == "D4" )
  {
    return ( ent as D4 ).getRelatedEntities();
  }
  if ( type == "E4" )
  {
    return ( ent as E4 ).getRelatedEntities();
  }
  if ( type == "F4" )
  {
    return ( ent as F4 ).getRelatedEntities();
  }
  if ( type == "G4" )
  {
    return ( ent as G4 ).getRelatedEntities();
  }
  if ( type == "H4" )
  {
    return ( ent as H4 ).getRelatedEntities();
  }
  if ( type == "I4" )
  {
    return ( ent as I4 ).getRelatedEntities();
  }
  if ( type == "J4" )
  {
    return ( ent as J4 ).getRelatedEntities();
  }
  if ( type == "K4" )
  {
    return ( ent as K4 ).getRelatedEntities();
  }
  if ( type == "L4" )
  {
    return ( ent as L4 ).getRelatedEntities();
  }
  if ( type == "M4" )
  {
    return ( ent as M4 ).getRelatedEntities();
  }
  if ( type == "N4" )
  {
    return ( ent as N4 ).getRelatedEntities();
  }
  if ( type == "O4" )
  {
    return ( ent as O4 ).getRelatedEntities();
  }
  if ( type == "P4" )
  {
    return ( ent as P4 ).getRelatedEntities();
  }
  if ( type == "Q4" )
  {
    return ( ent as Q4 ).getRelatedEntities();
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
function getAllGForTopEntity ( tl : Entity ) : Set<G>
{
  if ( tl.getTypeString() == "G" )
  {
    return {( tl as G )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<G>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "G" )
            {
              found.add(( ent as G ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllHForTopEntity ( tl : Entity ) : Set<H>
{
  if ( tl.getTypeString() == "H" )
  {
    return {( tl as H )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<H>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "H" )
            {
              found.add(( ent as H ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllIForTopEntity ( tl : Entity ) : Set<I>
{
  if ( tl.getTypeString() == "I" )
  {
    return {( tl as I )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<I>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "I" )
            {
              found.add(( ent as I ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllJForTopEntity ( tl : Entity ) : Set<J>
{
  if ( tl.getTypeString() == "J" )
  {
    return {( tl as J )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<J>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "J" )
            {
              found.add(( ent as J ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllKForTopEntity ( tl : Entity ) : Set<K>
{
  if ( tl.getTypeString() == "K" )
  {
    return {( tl as K )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<K>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "K" )
            {
              found.add(( ent as K ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllLForTopEntity ( tl : Entity ) : Set<L>
{
  if ( tl.getTypeString() == "L" )
  {
    return {( tl as L )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<L>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "L" )
            {
              found.add(( ent as L ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllMForTopEntity ( tl : Entity ) : Set<M>
{
  if ( tl.getTypeString() == "M" )
  {
    return {( tl as M )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<M>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "M" )
            {
              found.add(( ent as M ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllNForTopEntity ( tl : Entity ) : Set<N>
{
  if ( tl.getTypeString() == "N" )
  {
    return {( tl as N )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<N>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "N" )
            {
              found.add(( ent as N ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllOForTopEntity ( tl : Entity ) : Set<O>
{
  if ( tl.getTypeString() == "O" )
  {
    return {( tl as O )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<O>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "O" )
            {
              found.add(( ent as O ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllPForTopEntity ( tl : Entity ) : Set<P>
{
  if ( tl.getTypeString() == "P" )
  {
    return {( tl as P )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<P>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "P" )
            {
              found.add(( ent as P ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllQForTopEntity ( tl : Entity ) : Set<Q>
{
  if ( tl.getTypeString() == "Q" )
  {
    return {( tl as Q )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Q>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Q" )
            {
              found.add(( ent as Q ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllRForTopEntity ( tl : Entity ) : Set<R>
{
  if ( tl.getTypeString() == "R" )
  {
    return {( tl as R )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<R>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "R" )
            {
              found.add(( ent as R ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllSForTopEntity ( tl : Entity ) : Set<S>
{
  if ( tl.getTypeString() == "S" )
  {
    return {( tl as S )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<S>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "S" )
            {
              found.add(( ent as S ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllTForTopEntity ( tl : Entity ) : Set<T>
{
  if ( tl.getTypeString() == "T" )
  {
    return {( tl as T )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<T>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "T" )
            {
              found.add(( ent as T ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllUForTopEntity ( tl : Entity ) : Set<U>
{
  if ( tl.getTypeString() == "U" )
  {
    return {( tl as U )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<U>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "U" )
            {
              found.add(( ent as U ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllVForTopEntity ( tl : Entity ) : Set<V>
{
  if ( tl.getTypeString() == "V" )
  {
    return {( tl as V )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<V>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "V" )
            {
              found.add(( ent as V ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllWForTopEntity ( tl : Entity ) : Set<W>
{
  if ( tl.getTypeString() == "W" )
  {
    return {( tl as W )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<W>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "W" )
            {
              found.add(( ent as W ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllXForTopEntity ( tl : Entity ) : Set<X>
{
  if ( tl.getTypeString() == "X" )
  {
    return {( tl as X )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<X>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "X" )
            {
              found.add(( ent as X ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllYForTopEntity ( tl : Entity ) : Set<Y>
{
  if ( tl.getTypeString() == "Y" )
  {
    return {( tl as Y )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Y>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Y" )
            {
              found.add(( ent as Y ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllZForTopEntity ( tl : Entity ) : Set<Z>
{
  if ( tl.getTypeString() == "Z" )
  {
    return {( tl as Z )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Z>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Z" )
            {
              found.add(( ent as Z ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllA1ForTopEntity ( tl : Entity ) : Set<A1>
{
  if ( tl.getTypeString() == "A1" )
  {
    return {( tl as A1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<A1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "A1" )
            {
              found.add(( ent as A1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllB1ForTopEntity ( tl : Entity ) : Set<B1>
{
  if ( tl.getTypeString() == "B1" )
  {
    return {( tl as B1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<B1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "B1" )
            {
              found.add(( ent as B1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllC1ForTopEntity ( tl : Entity ) : Set<C1>
{
  if ( tl.getTypeString() == "C1" )
  {
    return {( tl as C1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<C1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "C1" )
            {
              found.add(( ent as C1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllD1ForTopEntity ( tl : Entity ) : Set<D1>
{
  if ( tl.getTypeString() == "D1" )
  {
    return {( tl as D1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<D1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "D1" )
            {
              found.add(( ent as D1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllE1ForTopEntity ( tl : Entity ) : Set<E1>
{
  if ( tl.getTypeString() == "E1" )
  {
    return {( tl as E1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<E1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "E1" )
            {
              found.add(( ent as E1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllF1ForTopEntity ( tl : Entity ) : Set<F1>
{
  if ( tl.getTypeString() == "F1" )
  {
    return {( tl as F1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<F1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "F1" )
            {
              found.add(( ent as F1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllG1ForTopEntity ( tl : Entity ) : Set<G1>
{
  if ( tl.getTypeString() == "G1" )
  {
    return {( tl as G1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<G1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "G1" )
            {
              found.add(( ent as G1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllH1ForTopEntity ( tl : Entity ) : Set<H1>
{
  if ( tl.getTypeString() == "H1" )
  {
    return {( tl as H1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<H1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "H1" )
            {
              found.add(( ent as H1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllI1ForTopEntity ( tl : Entity ) : Set<I1>
{
  if ( tl.getTypeString() == "I1" )
  {
    return {( tl as I1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<I1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "I1" )
            {
              found.add(( ent as I1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllJ1ForTopEntity ( tl : Entity ) : Set<J1>
{
  if ( tl.getTypeString() == "J1" )
  {
    return {( tl as J1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<J1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "J1" )
            {
              found.add(( ent as J1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllK1ForTopEntity ( tl : Entity ) : Set<K1>
{
  if ( tl.getTypeString() == "K1" )
  {
    return {( tl as K1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<K1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "K1" )
            {
              found.add(( ent as K1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllL1ForTopEntity ( tl : Entity ) : Set<L1>
{
  if ( tl.getTypeString() == "L1" )
  {
    return {( tl as L1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<L1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "L1" )
            {
              found.add(( ent as L1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllM1ForTopEntity ( tl : Entity ) : Set<M1>
{
  if ( tl.getTypeString() == "M1" )
  {
    return {( tl as M1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<M1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "M1" )
            {
              found.add(( ent as M1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllN1ForTopEntity ( tl : Entity ) : Set<N1>
{
  if ( tl.getTypeString() == "N1" )
  {
    return {( tl as N1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<N1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "N1" )
            {
              found.add(( ent as N1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllO1ForTopEntity ( tl : Entity ) : Set<O1>
{
  if ( tl.getTypeString() == "O1" )
  {
    return {( tl as O1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<O1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "O1" )
            {
              found.add(( ent as O1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllP1ForTopEntity ( tl : Entity ) : Set<P1>
{
  if ( tl.getTypeString() == "P1" )
  {
    return {( tl as P1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<P1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "P1" )
            {
              found.add(( ent as P1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllQ1ForTopEntity ( tl : Entity ) : Set<Q1>
{
  if ( tl.getTypeString() == "Q1" )
  {
    return {( tl as Q1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Q1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Q1" )
            {
              found.add(( ent as Q1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllR1ForTopEntity ( tl : Entity ) : Set<R1>
{
  if ( tl.getTypeString() == "R1" )
  {
    return {( tl as R1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<R1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "R1" )
            {
              found.add(( ent as R1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllS1ForTopEntity ( tl : Entity ) : Set<S1>
{
  if ( tl.getTypeString() == "S1" )
  {
    return {( tl as S1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<S1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "S1" )
            {
              found.add(( ent as S1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllT1ForTopEntity ( tl : Entity ) : Set<T1>
{
  if ( tl.getTypeString() == "T1" )
  {
    return {( tl as T1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<T1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "T1" )
            {
              found.add(( ent as T1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllU1ForTopEntity ( tl : Entity ) : Set<U1>
{
  if ( tl.getTypeString() == "U1" )
  {
    return {( tl as U1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<U1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "U1" )
            {
              found.add(( ent as U1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllV1ForTopEntity ( tl : Entity ) : Set<V1>
{
  if ( tl.getTypeString() == "V1" )
  {
    return {( tl as V1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<V1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "V1" )
            {
              found.add(( ent as V1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllW1ForTopEntity ( tl : Entity ) : Set<W1>
{
  if ( tl.getTypeString() == "W1" )
  {
    return {( tl as W1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<W1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "W1" )
            {
              found.add(( ent as W1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllX1ForTopEntity ( tl : Entity ) : Set<X1>
{
  if ( tl.getTypeString() == "X1" )
  {
    return {( tl as X1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<X1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "X1" )
            {
              found.add(( ent as X1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllY1ForTopEntity ( tl : Entity ) : Set<Y1>
{
  if ( tl.getTypeString() == "Y1" )
  {
    return {( tl as Y1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Y1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Y1" )
            {
              found.add(( ent as Y1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllZ1ForTopEntity ( tl : Entity ) : Set<Z1>
{
  if ( tl.getTypeString() == "Z1" )
  {
    return {( tl as Z1 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Z1>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Z1" )
            {
              found.add(( ent as Z1 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllA2ForTopEntity ( tl : Entity ) : Set<A2>
{
  if ( tl.getTypeString() == "A2" )
  {
    return {( tl as A2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<A2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "A2" )
            {
              found.add(( ent as A2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllB2ForTopEntity ( tl : Entity ) : Set<B2>
{
  if ( tl.getTypeString() == "B2" )
  {
    return {( tl as B2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<B2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "B2" )
            {
              found.add(( ent as B2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllC2ForTopEntity ( tl : Entity ) : Set<C2>
{
  if ( tl.getTypeString() == "C2" )
  {
    return {( tl as C2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<C2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "C2" )
            {
              found.add(( ent as C2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllD2ForTopEntity ( tl : Entity ) : Set<D2>
{
  if ( tl.getTypeString() == "D2" )
  {
    return {( tl as D2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<D2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "D2" )
            {
              found.add(( ent as D2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllE2ForTopEntity ( tl : Entity ) : Set<E2>
{
  if ( tl.getTypeString() == "E2" )
  {
    return {( tl as E2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<E2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "E2" )
            {
              found.add(( ent as E2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllF2ForTopEntity ( tl : Entity ) : Set<F2>
{
  if ( tl.getTypeString() == "F2" )
  {
    return {( tl as F2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<F2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "F2" )
            {
              found.add(( ent as F2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllG2ForTopEntity ( tl : Entity ) : Set<G2>
{
  if ( tl.getTypeString() == "G2" )
  {
    return {( tl as G2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<G2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "G2" )
            {
              found.add(( ent as G2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllH2ForTopEntity ( tl : Entity ) : Set<H2>
{
  if ( tl.getTypeString() == "H2" )
  {
    return {( tl as H2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<H2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "H2" )
            {
              found.add(( ent as H2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllI2ForTopEntity ( tl : Entity ) : Set<I2>
{
  if ( tl.getTypeString() == "I2" )
  {
    return {( tl as I2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<I2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "I2" )
            {
              found.add(( ent as I2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllJ2ForTopEntity ( tl : Entity ) : Set<J2>
{
  if ( tl.getTypeString() == "J2" )
  {
    return {( tl as J2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<J2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "J2" )
            {
              found.add(( ent as J2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllK2ForTopEntity ( tl : Entity ) : Set<K2>
{
  if ( tl.getTypeString() == "K2" )
  {
    return {( tl as K2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<K2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "K2" )
            {
              found.add(( ent as K2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllL2ForTopEntity ( tl : Entity ) : Set<L2>
{
  if ( tl.getTypeString() == "L2" )
  {
    return {( tl as L2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<L2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "L2" )
            {
              found.add(( ent as L2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllM2ForTopEntity ( tl : Entity ) : Set<M2>
{
  if ( tl.getTypeString() == "M2" )
  {
    return {( tl as M2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<M2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "M2" )
            {
              found.add(( ent as M2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllN2ForTopEntity ( tl : Entity ) : Set<N2>
{
  if ( tl.getTypeString() == "N2" )
  {
    return {( tl as N2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<N2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "N2" )
            {
              found.add(( ent as N2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllO2ForTopEntity ( tl : Entity ) : Set<O2>
{
  if ( tl.getTypeString() == "O2" )
  {
    return {( tl as O2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<O2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "O2" )
            {
              found.add(( ent as O2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllP2ForTopEntity ( tl : Entity ) : Set<P2>
{
  if ( tl.getTypeString() == "P2" )
  {
    return {( tl as P2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<P2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "P2" )
            {
              found.add(( ent as P2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllQ2ForTopEntity ( tl : Entity ) : Set<Q2>
{
  if ( tl.getTypeString() == "Q2" )
  {
    return {( tl as Q2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Q2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Q2" )
            {
              found.add(( ent as Q2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllR2ForTopEntity ( tl : Entity ) : Set<R2>
{
  if ( tl.getTypeString() == "R2" )
  {
    return {( tl as R2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<R2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "R2" )
            {
              found.add(( ent as R2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllS2ForTopEntity ( tl : Entity ) : Set<S2>
{
  if ( tl.getTypeString() == "S2" )
  {
    return {( tl as S2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<S2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "S2" )
            {
              found.add(( ent as S2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllT2ForTopEntity ( tl : Entity ) : Set<T2>
{
  if ( tl.getTypeString() == "T2" )
  {
    return {( tl as T2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<T2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "T2" )
            {
              found.add(( ent as T2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllU2ForTopEntity ( tl : Entity ) : Set<U2>
{
  if ( tl.getTypeString() == "U2" )
  {
    return {( tl as U2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<U2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "U2" )
            {
              found.add(( ent as U2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllV2ForTopEntity ( tl : Entity ) : Set<V2>
{
  if ( tl.getTypeString() == "V2" )
  {
    return {( tl as V2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<V2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "V2" )
            {
              found.add(( ent as V2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllW2ForTopEntity ( tl : Entity ) : Set<W2>
{
  if ( tl.getTypeString() == "W2" )
  {
    return {( tl as W2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<W2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "W2" )
            {
              found.add(( ent as W2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllX2ForTopEntity ( tl : Entity ) : Set<X2>
{
  if ( tl.getTypeString() == "X2" )
  {
    return {( tl as X2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<X2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "X2" )
            {
              found.add(( ent as X2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllY2ForTopEntity ( tl : Entity ) : Set<Y2>
{
  if ( tl.getTypeString() == "Y2" )
  {
    return {( tl as Y2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Y2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Y2" )
            {
              found.add(( ent as Y2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllZ2ForTopEntity ( tl : Entity ) : Set<Z2>
{
  if ( tl.getTypeString() == "Z2" )
  {
    return {( tl as Z2 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Z2>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Z2" )
            {
              found.add(( ent as Z2 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllA3ForTopEntity ( tl : Entity ) : Set<A3>
{
  if ( tl.getTypeString() == "A3" )
  {
    return {( tl as A3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<A3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "A3" )
            {
              found.add(( ent as A3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllB3ForTopEntity ( tl : Entity ) : Set<B3>
{
  if ( tl.getTypeString() == "B3" )
  {
    return {( tl as B3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<B3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "B3" )
            {
              found.add(( ent as B3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllC3ForTopEntity ( tl : Entity ) : Set<C3>
{
  if ( tl.getTypeString() == "C3" )
  {
    return {( tl as C3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<C3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "C3" )
            {
              found.add(( ent as C3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllD3ForTopEntity ( tl : Entity ) : Set<D3>
{
  if ( tl.getTypeString() == "D3" )
  {
    return {( tl as D3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<D3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "D3" )
            {
              found.add(( ent as D3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllE3ForTopEntity ( tl : Entity ) : Set<E3>
{
  if ( tl.getTypeString() == "E3" )
  {
    return {( tl as E3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<E3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "E3" )
            {
              found.add(( ent as E3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllF3ForTopEntity ( tl : Entity ) : Set<F3>
{
  if ( tl.getTypeString() == "F3" )
  {
    return {( tl as F3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<F3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "F3" )
            {
              found.add(( ent as F3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllG3ForTopEntity ( tl : Entity ) : Set<G3>
{
  if ( tl.getTypeString() == "G3" )
  {
    return {( tl as G3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<G3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "G3" )
            {
              found.add(( ent as G3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllH3ForTopEntity ( tl : Entity ) : Set<H3>
{
  if ( tl.getTypeString() == "H3" )
  {
    return {( tl as H3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<H3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "H3" )
            {
              found.add(( ent as H3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllI3ForTopEntity ( tl : Entity ) : Set<I3>
{
  if ( tl.getTypeString() == "I3" )
  {
    return {( tl as I3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<I3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "I3" )
            {
              found.add(( ent as I3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllJ3ForTopEntity ( tl : Entity ) : Set<J3>
{
  if ( tl.getTypeString() == "J3" )
  {
    return {( tl as J3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<J3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "J3" )
            {
              found.add(( ent as J3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllK3ForTopEntity ( tl : Entity ) : Set<K3>
{
  if ( tl.getTypeString() == "K3" )
  {
    return {( tl as K3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<K3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "K3" )
            {
              found.add(( ent as K3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllL3ForTopEntity ( tl : Entity ) : Set<L3>
{
  if ( tl.getTypeString() == "L3" )
  {
    return {( tl as L3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<L3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "L3" )
            {
              found.add(( ent as L3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllM3ForTopEntity ( tl : Entity ) : Set<M3>
{
  if ( tl.getTypeString() == "M3" )
  {
    return {( tl as M3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<M3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "M3" )
            {
              found.add(( ent as M3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllN3ForTopEntity ( tl : Entity ) : Set<N3>
{
  if ( tl.getTypeString() == "N3" )
  {
    return {( tl as N3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<N3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "N3" )
            {
              found.add(( ent as N3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllO3ForTopEntity ( tl : Entity ) : Set<O3>
{
  if ( tl.getTypeString() == "O3" )
  {
    return {( tl as O3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<O3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "O3" )
            {
              found.add(( ent as O3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllP3ForTopEntity ( tl : Entity ) : Set<P3>
{
  if ( tl.getTypeString() == "P3" )
  {
    return {( tl as P3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<P3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "P3" )
            {
              found.add(( ent as P3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllQ3ForTopEntity ( tl : Entity ) : Set<Q3>
{
  if ( tl.getTypeString() == "Q3" )
  {
    return {( tl as Q3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Q3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Q3" )
            {
              found.add(( ent as Q3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllR3ForTopEntity ( tl : Entity ) : Set<R3>
{
  if ( tl.getTypeString() == "R3" )
  {
    return {( tl as R3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<R3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "R3" )
            {
              found.add(( ent as R3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllS3ForTopEntity ( tl : Entity ) : Set<S3>
{
  if ( tl.getTypeString() == "S3" )
  {
    return {( tl as S3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<S3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "S3" )
            {
              found.add(( ent as S3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllT3ForTopEntity ( tl : Entity ) : Set<T3>
{
  if ( tl.getTypeString() == "T3" )
  {
    return {( tl as T3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<T3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "T3" )
            {
              found.add(( ent as T3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllU3ForTopEntity ( tl : Entity ) : Set<U3>
{
  if ( tl.getTypeString() == "U3" )
  {
    return {( tl as U3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<U3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "U3" )
            {
              found.add(( ent as U3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllV3ForTopEntity ( tl : Entity ) : Set<V3>
{
  if ( tl.getTypeString() == "V3" )
  {
    return {( tl as V3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<V3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "V3" )
            {
              found.add(( ent as V3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllW3ForTopEntity ( tl : Entity ) : Set<W3>
{
  if ( tl.getTypeString() == "W3" )
  {
    return {( tl as W3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<W3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "W3" )
            {
              found.add(( ent as W3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllX3ForTopEntity ( tl : Entity ) : Set<X3>
{
  if ( tl.getTypeString() == "X3" )
  {
    return {( tl as X3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<X3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "X3" )
            {
              found.add(( ent as X3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllY3ForTopEntity ( tl : Entity ) : Set<Y3>
{
  if ( tl.getTypeString() == "Y3" )
  {
    return {( tl as Y3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Y3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Y3" )
            {
              found.add(( ent as Y3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllZ3ForTopEntity ( tl : Entity ) : Set<Z3>
{
  if ( tl.getTypeString() == "Z3" )
  {
    return {( tl as Z3 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Z3>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Z3" )
            {
              found.add(( ent as Z3 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllA4ForTopEntity ( tl : Entity ) : Set<A4>
{
  if ( tl.getTypeString() == "A4" )
  {
    return {( tl as A4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<A4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "A4" )
            {
              found.add(( ent as A4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllB4ForTopEntity ( tl : Entity ) : Set<B4>
{
  if ( tl.getTypeString() == "B4" )
  {
    return {( tl as B4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<B4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "B4" )
            {
              found.add(( ent as B4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllC4ForTopEntity ( tl : Entity ) : Set<C4>
{
  if ( tl.getTypeString() == "C4" )
  {
    return {( tl as C4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<C4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "C4" )
            {
              found.add(( ent as C4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllD4ForTopEntity ( tl : Entity ) : Set<D4>
{
  if ( tl.getTypeString() == "D4" )
  {
    return {( tl as D4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<D4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "D4" )
            {
              found.add(( ent as D4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllE4ForTopEntity ( tl : Entity ) : Set<E4>
{
  if ( tl.getTypeString() == "E4" )
  {
    return {( tl as E4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<E4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "E4" )
            {
              found.add(( ent as E4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllF4ForTopEntity ( tl : Entity ) : Set<F4>
{
  if ( tl.getTypeString() == "F4" )
  {
    return {( tl as F4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<F4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "F4" )
            {
              found.add(( ent as F4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllG4ForTopEntity ( tl : Entity ) : Set<G4>
{
  if ( tl.getTypeString() == "G4" )
  {
    return {( tl as G4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<G4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "G4" )
            {
              found.add(( ent as G4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllH4ForTopEntity ( tl : Entity ) : Set<H4>
{
  if ( tl.getTypeString() == "H4" )
  {
    return {( tl as H4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<H4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "H4" )
            {
              found.add(( ent as H4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllI4ForTopEntity ( tl : Entity ) : Set<I4>
{
  if ( tl.getTypeString() == "I4" )
  {
    return {( tl as I4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<I4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "I4" )
            {
              found.add(( ent as I4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllJ4ForTopEntity ( tl : Entity ) : Set<J4>
{
  if ( tl.getTypeString() == "J4" )
  {
    return {( tl as J4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<J4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "J4" )
            {
              found.add(( ent as J4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllK4ForTopEntity ( tl : Entity ) : Set<K4>
{
  if ( tl.getTypeString() == "K4" )
  {
    return {( tl as K4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<K4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "K4" )
            {
              found.add(( ent as K4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllL4ForTopEntity ( tl : Entity ) : Set<L4>
{
  if ( tl.getTypeString() == "L4" )
  {
    return {( tl as L4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<L4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "L4" )
            {
              found.add(( ent as L4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllM4ForTopEntity ( tl : Entity ) : Set<M4>
{
  if ( tl.getTypeString() == "M4" )
  {
    return {( tl as M4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<M4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "M4" )
            {
              found.add(( ent as M4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllN4ForTopEntity ( tl : Entity ) : Set<N4>
{
  if ( tl.getTypeString() == "N4" )
  {
    return {( tl as N4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<N4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "N4" )
            {
              found.add(( ent as N4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllO4ForTopEntity ( tl : Entity ) : Set<O4>
{
  if ( tl.getTypeString() == "O4" )
  {
    return {( tl as O4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<O4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "O4" )
            {
              found.add(( ent as O4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllP4ForTopEntity ( tl : Entity ) : Set<P4>
{
  if ( tl.getTypeString() == "P4" )
  {
    return {( tl as P4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<P4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "P4" )
            {
              found.add(( ent as P4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllQ4ForTopEntity ( tl : Entity ) : Set<Q4>
{
  if ( tl.getTypeString() == "Q4" )
  {
    return {( tl as Q4 )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Q4>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Q4" )
            {
              found.add(( ent as Q4 ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}