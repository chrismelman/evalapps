module webservices/access-control/T3
extend entity T3 {
  function mayReadSynchronize ( ) : Bool
  {
    return true;
  }
  function mayModifySynchronize ( ) : Bool
  {
    return true;
  }
  static function mayCreateSynchronize ( ) : Bool
  {
    return true;
  }
}