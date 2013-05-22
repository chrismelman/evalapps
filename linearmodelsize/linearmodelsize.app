application linearmodel

imports webservices/services/interface
page root(){ 
	 
}

derive webservices for A , with nameproperty name 
entity A{
	name : String 
	list -> List<B>
	
}
 
entity B {
	prop1 :: String
	prop2 :: String
	prop3 :: String
	prop4 :: String
	prop5 :: String
	// list -> List<C>
}

function newB(input : String) : B {
		var ent := B {
			prop1  := input,
			prop2  := input,
			prop3  := input,
			prop4  := input,
			prop5  := input
			};
		ent.save(); 
		// while(ent.list.length < 1){
		// 	ent.list.add(newC(name)); 
		// }
		return ent;
	}
// 	

init {
	var defstring := "a";
	var a := A{ name := defstring };
	a.save();
	while(a.list.length < 1000 ){
		a.list.add(newB(defstring));
	}
}