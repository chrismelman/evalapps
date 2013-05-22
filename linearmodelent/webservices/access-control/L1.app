module webservices/access-control/L1
extend entity L1 {
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