module webservices/access-control/D1
extend entity D1 {
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