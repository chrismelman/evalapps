module webservices/access-control/N2
extend entity N2 {
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