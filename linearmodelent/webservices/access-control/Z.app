module webservices/access-control/Z
extend entity Z {
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