module webservices/mappers/B
function mapperEditedB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("pr100") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr100", "warning"));
  }
  else
  {
    if ( json.get("pr100") == json.NULL )
    {
      ent.pr100 := null;
    }
    else
    {
      ent.pr100 := json.getString("pr100");
    }
  }
  if ( ! json.has("pr99") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr99", "warning"));
  }
  else
  {
    if ( json.get("pr99") == json.NULL )
    {
      ent.pr99 := null;
    }
    else
    {
      ent.pr99 := json.getString("pr99");
    }
  }
  if ( ! json.has("pr98") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr98", "warning"));
  }
  else
  {
    if ( json.get("pr98") == json.NULL )
    {
      ent.pr98 := null;
    }
    else
    {
      ent.pr98 := json.getString("pr98");
    }
  }
  if ( ! json.has("pr97") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr97", "warning"));
  }
  else
  {
    if ( json.get("pr97") == json.NULL )
    {
      ent.pr97 := null;
    }
    else
    {
      ent.pr97 := json.getString("pr97");
    }
  }
  if ( ! json.has("pr96") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr96", "warning"));
  }
  else
  {
    if ( json.get("pr96") == json.NULL )
    {
      ent.pr96 := null;
    }
    else
    {
      ent.pr96 := json.getString("pr96");
    }
  }
  if ( ! json.has("pr95") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr95", "warning"));
  }
  else
  {
    if ( json.get("pr95") == json.NULL )
    {
      ent.pr95 := null;
    }
    else
    {
      ent.pr95 := json.getString("pr95");
    }
  }
  if ( ! json.has("pr94") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr94", "warning"));
  }
  else
  {
    if ( json.get("pr94") == json.NULL )
    {
      ent.pr94 := null;
    }
    else
    {
      ent.pr94 := json.getString("pr94");
    }
  }
  if ( ! json.has("pr93") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr93", "warning"));
  }
  else
  {
    if ( json.get("pr93") == json.NULL )
    {
      ent.pr93 := null;
    }
    else
    {
      ent.pr93 := json.getString("pr93");
    }
  }
  if ( ! json.has("pr92") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr92", "warning"));
  }
  else
  {
    if ( json.get("pr92") == json.NULL )
    {
      ent.pr92 := null;
    }
    else
    {
      ent.pr92 := json.getString("pr92");
    }
  }
  if ( ! json.has("pr91") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr91", "warning"));
  }
  else
  {
    if ( json.get("pr91") == json.NULL )
    {
      ent.pr91 := null;
    }
    else
    {
      ent.pr91 := json.getString("pr91");
    }
  }
  if ( ! json.has("pr90") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr90", "warning"));
  }
  else
  {
    if ( json.get("pr90") == json.NULL )
    {
      ent.pr90 := null;
    }
    else
    {
      ent.pr90 := json.getString("pr90");
    }
  }
  if ( ! json.has("pr89") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr89", "warning"));
  }
  else
  {
    if ( json.get("pr89") == json.NULL )
    {
      ent.pr89 := null;
    }
    else
    {
      ent.pr89 := json.getString("pr89");
    }
  }
  if ( ! json.has("pr88") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr88", "warning"));
  }
  else
  {
    if ( json.get("pr88") == json.NULL )
    {
      ent.pr88 := null;
    }
    else
    {
      ent.pr88 := json.getString("pr88");
    }
  }
  if ( ! json.has("pr87") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr87", "warning"));
  }
  else
  {
    if ( json.get("pr87") == json.NULL )
    {
      ent.pr87 := null;
    }
    else
    {
      ent.pr87 := json.getString("pr87");
    }
  }
  if ( ! json.has("pr86") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr86", "warning"));
  }
  else
  {
    if ( json.get("pr86") == json.NULL )
    {
      ent.pr86 := null;
    }
    else
    {
      ent.pr86 := json.getString("pr86");
    }
  }
  if ( ! json.has("pr85") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr85", "warning"));
  }
  else
  {
    if ( json.get("pr85") == json.NULL )
    {
      ent.pr85 := null;
    }
    else
    {
      ent.pr85 := json.getString("pr85");
    }
  }
  if ( ! json.has("pr84") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr84", "warning"));
  }
  else
  {
    if ( json.get("pr84") == json.NULL )
    {
      ent.pr84 := null;
    }
    else
    {
      ent.pr84 := json.getString("pr84");
    }
  }
  if ( ! json.has("pr83") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr83", "warning"));
  }
  else
  {
    if ( json.get("pr83") == json.NULL )
    {
      ent.pr83 := null;
    }
    else
    {
      ent.pr83 := json.getString("pr83");
    }
  }
  if ( ! json.has("pr82") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr82", "warning"));
  }
  else
  {
    if ( json.get("pr82") == json.NULL )
    {
      ent.pr82 := null;
    }
    else
    {
      ent.pr82 := json.getString("pr82");
    }
  }
  if ( ! json.has("pr81") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr81", "warning"));
  }
  else
  {
    if ( json.get("pr81") == json.NULL )
    {
      ent.pr81 := null;
    }
    else
    {
      ent.pr81 := json.getString("pr81");
    }
  }
  if ( ! json.has("pr80") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr80", "warning"));
  }
  else
  {
    if ( json.get("pr80") == json.NULL )
    {
      ent.pr80 := null;
    }
    else
    {
      ent.pr80 := json.getString("pr80");
    }
  }
  if ( ! json.has("pr79") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr79", "warning"));
  }
  else
  {
    if ( json.get("pr79") == json.NULL )
    {
      ent.pr79 := null;
    }
    else
    {
      ent.pr79 := json.getString("pr79");
    }
  }
  if ( ! json.has("pr78") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr78", "warning"));
  }
  else
  {
    if ( json.get("pr78") == json.NULL )
    {
      ent.pr78 := null;
    }
    else
    {
      ent.pr78 := json.getString("pr78");
    }
  }
  if ( ! json.has("pr77") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr77", "warning"));
  }
  else
  {
    if ( json.get("pr77") == json.NULL )
    {
      ent.pr77 := null;
    }
    else
    {
      ent.pr77 := json.getString("pr77");
    }
  }
  if ( ! json.has("pr76") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr76", "warning"));
  }
  else
  {
    if ( json.get("pr76") == json.NULL )
    {
      ent.pr76 := null;
    }
    else
    {
      ent.pr76 := json.getString("pr76");
    }
  }
  if ( ! json.has("pr75") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr75", "warning"));
  }
  else
  {
    if ( json.get("pr75") == json.NULL )
    {
      ent.pr75 := null;
    }
    else
    {
      ent.pr75 := json.getString("pr75");
    }
  }
  if ( ! json.has("pr74") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr74", "warning"));
  }
  else
  {
    if ( json.get("pr74") == json.NULL )
    {
      ent.pr74 := null;
    }
    else
    {
      ent.pr74 := json.getString("pr74");
    }
  }
  if ( ! json.has("pr73") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr73", "warning"));
  }
  else
  {
    if ( json.get("pr73") == json.NULL )
    {
      ent.pr73 := null;
    }
    else
    {
      ent.pr73 := json.getString("pr73");
    }
  }
  if ( ! json.has("pr72") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr72", "warning"));
  }
  else
  {
    if ( json.get("pr72") == json.NULL )
    {
      ent.pr72 := null;
    }
    else
    {
      ent.pr72 := json.getString("pr72");
    }
  }
  if ( ! json.has("pr71") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr71", "warning"));
  }
  else
  {
    if ( json.get("pr71") == json.NULL )
    {
      ent.pr71 := null;
    }
    else
    {
      ent.pr71 := json.getString("pr71");
    }
  }
  if ( ! json.has("pr70") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr70", "warning"));
  }
  else
  {
    if ( json.get("pr70") == json.NULL )
    {
      ent.pr70 := null;
    }
    else
    {
      ent.pr70 := json.getString("pr70");
    }
  }
  if ( ! json.has("pr69") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr69", "warning"));
  }
  else
  {
    if ( json.get("pr69") == json.NULL )
    {
      ent.pr69 := null;
    }
    else
    {
      ent.pr69 := json.getString("pr69");
    }
  }
  if ( ! json.has("pr68") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr68", "warning"));
  }
  else
  {
    if ( json.get("pr68") == json.NULL )
    {
      ent.pr68 := null;
    }
    else
    {
      ent.pr68 := json.getString("pr68");
    }
  }
  if ( ! json.has("pr67") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr67", "warning"));
  }
  else
  {
    if ( json.get("pr67") == json.NULL )
    {
      ent.pr67 := null;
    }
    else
    {
      ent.pr67 := json.getString("pr67");
    }
  }
  if ( ! json.has("pr66") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr66", "warning"));
  }
  else
  {
    if ( json.get("pr66") == json.NULL )
    {
      ent.pr66 := null;
    }
    else
    {
      ent.pr66 := json.getString("pr66");
    }
  }
  if ( ! json.has("pr65") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr65", "warning"));
  }
  else
  {
    if ( json.get("pr65") == json.NULL )
    {
      ent.pr65 := null;
    }
    else
    {
      ent.pr65 := json.getString("pr65");
    }
  }
  if ( ! json.has("pr64") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr64", "warning"));
  }
  else
  {
    if ( json.get("pr64") == json.NULL )
    {
      ent.pr64 := null;
    }
    else
    {
      ent.pr64 := json.getString("pr64");
    }
  }
  if ( ! json.has("pr63") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr63", "warning"));
  }
  else
  {
    if ( json.get("pr63") == json.NULL )
    {
      ent.pr63 := null;
    }
    else
    {
      ent.pr63 := json.getString("pr63");
    }
  }
  if ( ! json.has("pr62") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr62", "warning"));
  }
  else
  {
    if ( json.get("pr62") == json.NULL )
    {
      ent.pr62 := null;
    }
    else
    {
      ent.pr62 := json.getString("pr62");
    }
  }
  if ( ! json.has("pr61") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr61", "warning"));
  }
  else
  {
    if ( json.get("pr61") == json.NULL )
    {
      ent.pr61 := null;
    }
    else
    {
      ent.pr61 := json.getString("pr61");
    }
  }
  if ( ! json.has("pr60") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr60", "warning"));
  }
  else
  {
    if ( json.get("pr60") == json.NULL )
    {
      ent.pr60 := null;
    }
    else
    {
      ent.pr60 := json.getString("pr60");
    }
  }
  if ( ! json.has("pr59") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr59", "warning"));
  }
  else
  {
    if ( json.get("pr59") == json.NULL )
    {
      ent.pr59 := null;
    }
    else
    {
      ent.pr59 := json.getString("pr59");
    }
  }
  if ( ! json.has("pr58") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr58", "warning"));
  }
  else
  {
    if ( json.get("pr58") == json.NULL )
    {
      ent.pr58 := null;
    }
    else
    {
      ent.pr58 := json.getString("pr58");
    }
  }
  if ( ! json.has("pr57") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr57", "warning"));
  }
  else
  {
    if ( json.get("pr57") == json.NULL )
    {
      ent.pr57 := null;
    }
    else
    {
      ent.pr57 := json.getString("pr57");
    }
  }
  if ( ! json.has("pr56") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr56", "warning"));
  }
  else
  {
    if ( json.get("pr56") == json.NULL )
    {
      ent.pr56 := null;
    }
    else
    {
      ent.pr56 := json.getString("pr56");
    }
  }
  if ( ! json.has("pr55") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr55", "warning"));
  }
  else
  {
    if ( json.get("pr55") == json.NULL )
    {
      ent.pr55 := null;
    }
    else
    {
      ent.pr55 := json.getString("pr55");
    }
  }
  if ( ! json.has("pr54") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr54", "warning"));
  }
  else
  {
    if ( json.get("pr54") == json.NULL )
    {
      ent.pr54 := null;
    }
    else
    {
      ent.pr54 := json.getString("pr54");
    }
  }
  if ( ! json.has("pr53") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr53", "warning"));
  }
  else
  {
    if ( json.get("pr53") == json.NULL )
    {
      ent.pr53 := null;
    }
    else
    {
      ent.pr53 := json.getString("pr53");
    }
  }
  if ( ! json.has("pr52") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr52", "warning"));
  }
  else
  {
    if ( json.get("pr52") == json.NULL )
    {
      ent.pr52 := null;
    }
    else
    {
      ent.pr52 := json.getString("pr52");
    }
  }
  if ( ! json.has("pr51") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr51", "warning"));
  }
  else
  {
    if ( json.get("pr51") == json.NULL )
    {
      ent.pr51 := null;
    }
    else
    {
      ent.pr51 := json.getString("pr51");
    }
  }
  if ( ! json.has("pr50") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr50", "warning"));
  }
  else
  {
    if ( json.get("pr50") == json.NULL )
    {
      ent.pr50 := null;
    }
    else
    {
      ent.pr50 := json.getString("pr50");
    }
  }
  if ( ! json.has("pr49") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr49", "warning"));
  }
  else
  {
    if ( json.get("pr49") == json.NULL )
    {
      ent.pr49 := null;
    }
    else
    {
      ent.pr49 := json.getString("pr49");
    }
  }
  if ( ! json.has("pr48") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr48", "warning"));
  }
  else
  {
    if ( json.get("pr48") == json.NULL )
    {
      ent.pr48 := null;
    }
    else
    {
      ent.pr48 := json.getString("pr48");
    }
  }
  if ( ! json.has("pr47") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr47", "warning"));
  }
  else
  {
    if ( json.get("pr47") == json.NULL )
    {
      ent.pr47 := null;
    }
    else
    {
      ent.pr47 := json.getString("pr47");
    }
  }
  if ( ! json.has("pr46") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr46", "warning"));
  }
  else
  {
    if ( json.get("pr46") == json.NULL )
    {
      ent.pr46 := null;
    }
    else
    {
      ent.pr46 := json.getString("pr46");
    }
  }
  if ( ! json.has("pr45") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr45", "warning"));
  }
  else
  {
    if ( json.get("pr45") == json.NULL )
    {
      ent.pr45 := null;
    }
    else
    {
      ent.pr45 := json.getString("pr45");
    }
  }
  if ( ! json.has("pr44") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr44", "warning"));
  }
  else
  {
    if ( json.get("pr44") == json.NULL )
    {
      ent.pr44 := null;
    }
    else
    {
      ent.pr44 := json.getString("pr44");
    }
  }
  if ( ! json.has("pr43") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr43", "warning"));
  }
  else
  {
    if ( json.get("pr43") == json.NULL )
    {
      ent.pr43 := null;
    }
    else
    {
      ent.pr43 := json.getString("pr43");
    }
  }
  if ( ! json.has("pr42") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr42", "warning"));
  }
  else
  {
    if ( json.get("pr42") == json.NULL )
    {
      ent.pr42 := null;
    }
    else
    {
      ent.pr42 := json.getString("pr42");
    }
  }
  if ( ! json.has("pr41") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr41", "warning"));
  }
  else
  {
    if ( json.get("pr41") == json.NULL )
    {
      ent.pr41 := null;
    }
    else
    {
      ent.pr41 := json.getString("pr41");
    }
  }
  if ( ! json.has("pr40") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr40", "warning"));
  }
  else
  {
    if ( json.get("pr40") == json.NULL )
    {
      ent.pr40 := null;
    }
    else
    {
      ent.pr40 := json.getString("pr40");
    }
  }
  if ( ! json.has("pr39") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr39", "warning"));
  }
  else
  {
    if ( json.get("pr39") == json.NULL )
    {
      ent.pr39 := null;
    }
    else
    {
      ent.pr39 := json.getString("pr39");
    }
  }
  if ( ! json.has("pr38") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr38", "warning"));
  }
  else
  {
    if ( json.get("pr38") == json.NULL )
    {
      ent.pr38 := null;
    }
    else
    {
      ent.pr38 := json.getString("pr38");
    }
  }
  if ( ! json.has("pr37") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr37", "warning"));
  }
  else
  {
    if ( json.get("pr37") == json.NULL )
    {
      ent.pr37 := null;
    }
    else
    {
      ent.pr37 := json.getString("pr37");
    }
  }
  if ( ! json.has("pr36") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr36", "warning"));
  }
  else
  {
    if ( json.get("pr36") == json.NULL )
    {
      ent.pr36 := null;
    }
    else
    {
      ent.pr36 := json.getString("pr36");
    }
  }
  if ( ! json.has("pr35") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr35", "warning"));
  }
  else
  {
    if ( json.get("pr35") == json.NULL )
    {
      ent.pr35 := null;
    }
    else
    {
      ent.pr35 := json.getString("pr35");
    }
  }
  if ( ! json.has("pr34") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr34", "warning"));
  }
  else
  {
    if ( json.get("pr34") == json.NULL )
    {
      ent.pr34 := null;
    }
    else
    {
      ent.pr34 := json.getString("pr34");
    }
  }
  if ( ! json.has("pr33") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr33", "warning"));
  }
  else
  {
    if ( json.get("pr33") == json.NULL )
    {
      ent.pr33 := null;
    }
    else
    {
      ent.pr33 := json.getString("pr33");
    }
  }
  if ( ! json.has("pr32") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr32", "warning"));
  }
  else
  {
    if ( json.get("pr32") == json.NULL )
    {
      ent.pr32 := null;
    }
    else
    {
      ent.pr32 := json.getString("pr32");
    }
  }
  if ( ! json.has("pr31") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr31", "warning"));
  }
  else
  {
    if ( json.get("pr31") == json.NULL )
    {
      ent.pr31 := null;
    }
    else
    {
      ent.pr31 := json.getString("pr31");
    }
  }
  if ( ! json.has("pr30") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr30", "warning"));
  }
  else
  {
    if ( json.get("pr30") == json.NULL )
    {
      ent.pr30 := null;
    }
    else
    {
      ent.pr30 := json.getString("pr30");
    }
  }
  if ( ! json.has("pr29") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr29", "warning"));
  }
  else
  {
    if ( json.get("pr29") == json.NULL )
    {
      ent.pr29 := null;
    }
    else
    {
      ent.pr29 := json.getString("pr29");
    }
  }
  if ( ! json.has("pr28") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr28", "warning"));
  }
  else
  {
    if ( json.get("pr28") == json.NULL )
    {
      ent.pr28 := null;
    }
    else
    {
      ent.pr28 := json.getString("pr28");
    }
  }
  if ( ! json.has("pr27") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr27", "warning"));
  }
  else
  {
    if ( json.get("pr27") == json.NULL )
    {
      ent.pr27 := null;
    }
    else
    {
      ent.pr27 := json.getString("pr27");
    }
  }
  if ( ! json.has("pr26") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr26", "warning"));
  }
  else
  {
    if ( json.get("pr26") == json.NULL )
    {
      ent.pr26 := null;
    }
    else
    {
      ent.pr26 := json.getString("pr26");
    }
  }
  if ( ! json.has("pr25") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr25", "warning"));
  }
  else
  {
    if ( json.get("pr25") == json.NULL )
    {
      ent.pr25 := null;
    }
    else
    {
      ent.pr25 := json.getString("pr25");
    }
  }
  if ( ! json.has("pr24") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr24", "warning"));
  }
  else
  {
    if ( json.get("pr24") == json.NULL )
    {
      ent.pr24 := null;
    }
    else
    {
      ent.pr24 := json.getString("pr24");
    }
  }
  if ( ! json.has("pr23") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr23", "warning"));
  }
  else
  {
    if ( json.get("pr23") == json.NULL )
    {
      ent.pr23 := null;
    }
    else
    {
      ent.pr23 := json.getString("pr23");
    }
  }
  if ( ! json.has("pr22") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr22", "warning"));
  }
  else
  {
    if ( json.get("pr22") == json.NULL )
    {
      ent.pr22 := null;
    }
    else
    {
      ent.pr22 := json.getString("pr22");
    }
  }
  if ( ! json.has("pr21") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr21", "warning"));
  }
  else
  {
    if ( json.get("pr21") == json.NULL )
    {
      ent.pr21 := null;
    }
    else
    {
      ent.pr21 := json.getString("pr21");
    }
  }
  if ( ! json.has("pr20") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr20", "warning"));
  }
  else
  {
    if ( json.get("pr20") == json.NULL )
    {
      ent.pr20 := null;
    }
    else
    {
      ent.pr20 := json.getString("pr20");
    }
  }
  if ( ! json.has("pr19") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr19", "warning"));
  }
  else
  {
    if ( json.get("pr19") == json.NULL )
    {
      ent.pr19 := null;
    }
    else
    {
      ent.pr19 := json.getString("pr19");
    }
  }
  if ( ! json.has("pr18") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr18", "warning"));
  }
  else
  {
    if ( json.get("pr18") == json.NULL )
    {
      ent.pr18 := null;
    }
    else
    {
      ent.pr18 := json.getString("pr18");
    }
  }
  if ( ! json.has("pr17") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr17", "warning"));
  }
  else
  {
    if ( json.get("pr17") == json.NULL )
    {
      ent.pr17 := null;
    }
    else
    {
      ent.pr17 := json.getString("pr17");
    }
  }
  if ( ! json.has("pr16") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr16", "warning"));
  }
  else
  {
    if ( json.get("pr16") == json.NULL )
    {
      ent.pr16 := null;
    }
    else
    {
      ent.pr16 := json.getString("pr16");
    }
  }
  if ( ! json.has("pr15") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr15", "warning"));
  }
  else
  {
    if ( json.get("pr15") == json.NULL )
    {
      ent.pr15 := null;
    }
    else
    {
      ent.pr15 := json.getString("pr15");
    }
  }
  if ( ! json.has("pr14") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr14", "warning"));
  }
  else
  {
    if ( json.get("pr14") == json.NULL )
    {
      ent.pr14 := null;
    }
    else
    {
      ent.pr14 := json.getString("pr14");
    }
  }
  if ( ! json.has("pr13") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr13", "warning"));
  }
  else
  {
    if ( json.get("pr13") == json.NULL )
    {
      ent.pr13 := null;
    }
    else
    {
      ent.pr13 := json.getString("pr13");
    }
  }
  if ( ! json.has("pr12") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr12", "warning"));
  }
  else
  {
    if ( json.get("pr12") == json.NULL )
    {
      ent.pr12 := null;
    }
    else
    {
      ent.pr12 := json.getString("pr12");
    }
  }
  if ( ! json.has("pr11") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr11", "warning"));
  }
  else
  {
    if ( json.get("pr11") == json.NULL )
    {
      ent.pr11 := null;
    }
    else
    {
      ent.pr11 := json.getString("pr11");
    }
  }
  if ( ! json.has("pr10") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr10", "warning"));
  }
  else
  {
    if ( json.get("pr10") == json.NULL )
    {
      ent.pr10 := null;
    }
    else
    {
      ent.pr10 := json.getString("pr10");
    }
  }
  if ( ! json.has("pr9") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr9", "warning"));
  }
  else
  {
    if ( json.get("pr9") == json.NULL )
    {
      ent.pr9 := null;
    }
    else
    {
      ent.pr9 := json.getString("pr9");
    }
  }
  if ( ! json.has("pr8") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr8", "warning"));
  }
  else
  {
    if ( json.get("pr8") == json.NULL )
    {
      ent.pr8 := null;
    }
    else
    {
      ent.pr8 := json.getString("pr8");
    }
  }
  if ( ! json.has("pr7") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr7", "warning"));
  }
  else
  {
    if ( json.get("pr7") == json.NULL )
    {
      ent.pr7 := null;
    }
    else
    {
      ent.pr7 := json.getString("pr7");
    }
  }
  if ( ! json.has("pr6") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr6", "warning"));
  }
  else
  {
    if ( json.get("pr6") == json.NULL )
    {
      ent.pr6 := null;
    }
    else
    {
      ent.pr6 := json.getString("pr6");
    }
  }
  if ( ! json.has("pr5") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr5", "warning"));
  }
  else
  {
    if ( json.get("pr5") == json.NULL )
    {
      ent.pr5 := null;
    }
    else
    {
      ent.pr5 := json.getString("pr5");
    }
  }
  if ( ! json.has("pr4") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr4", "warning"));
  }
  else
  {
    if ( json.get("pr4") == json.NULL )
    {
      ent.pr4 := null;
    }
    else
    {
      ent.pr4 := json.getString("pr4");
    }
  }
  if ( ! json.has("pr3") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr3", "warning"));
  }
  else
  {
    if ( json.get("pr3") == json.NULL )
    {
      ent.pr3 := null;
    }
    else
    {
      ent.pr3 := json.getString("pr3");
    }
  }
  if ( ! json.has("pr2") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr2", "warning"));
  }
  else
  {
    if ( json.get("pr2") == json.NULL )
    {
      ent.pr2 := null;
    }
    else
    {
      ent.pr2 := json.getString("pr2");
    }
  }
  if ( ! json.has("pr1") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property pr1", "warning"));
  }
  else
  {
    if ( json.get("pr1") == json.NULL )
    {
      ent.pr1 := null;
    }
    else
    {
      ent.pr1 := json.getString("pr1");
    }
  }
}
function mapperNewB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedB(ent, json, localerrors);
}