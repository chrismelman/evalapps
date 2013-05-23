application linearmodelsize

// imports webservices/services/interface
page root(){ 
	 
}

derive webservices for A , with nameproperty name 
entity A{
	name : String 
	list -> List<B>
	
}
 
entity B {
	prop1 :: String(length=1000000000)
	// prop2 :: String(length=1000000000)
	// prop3 :: String(length=1000000000)
	// prop4 :: String(length=1000000000)
	// prop5 :: String(length=1000000000)
	// prop6 :: String(length=1000000000)
	// prop7 :: String(length=1000000000)
	// prop8 :: String(length=1000000000)
	// prop9 :: String(length=1000000000)
	// prop10 :: String(length=1000000000)
	// list -> List<C>
	
	function setProps(input : String) {
			prop1  := input;
			// prop2  := input;
			// prop3  := input;
			// prop4  := input;
			// prop5  := input;
			// prop6  := input;
			// prop7  := input;
			// prop8  := input;
			// prop9  := input;
			// prop10  := input;
		
	}
}

function newB(input : String) : B {
		var ent := B {
			prop1  := input,
			// prop2  := input,
			// prop3  := input,
			// prop4  := input,
			// prop5  := input,
			// prop6  := input,
			// prop7  := input,
			// prop8  := input,
			// prop9  := input,
			// prop10  := input
			};
		ent.save(); 
		// while(ent.list.length < 1){
		// 	ent.list.add(newC(name)); 
		// }
		return ent;
	}
// 	 


page setSize( a : Int, b: Int, c: Int, d: Int, e: Int){
	init {
		var defstring :="";
		for ( count: Int from 0 to a) { 
			defstring := defstring + "a";
		}
		for ( count: Int from 0 to b) { //0.05
			defstring := defstring + "aaaaaaaaaa";
		}
		for ( count: Int from 0 to c) { //0.1
		defstring := defstring + "aaaaaaaaaaaaaaaaaaaa";
		}
		for ( count: Int from 0 to d) { //1.0
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
		}
		for ( count: Int from 0 to e) { //10.0
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
			defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
		}  
	var a := A{ name := defstring };
		for(ent : B in B.all()){
			ent.setProps(defstring);
		}
	}
	
}

init {
	var defstring := "aaaaaaaa"; //0.15 ofset
	for ( count: Int from 0 to 0) { //0.05
		defstring := defstring + "aaaaaaaaaa";
	}
	for ( count: Int from 0 to 0) { //0.1
		defstring := defstring + "aaaaaaaaaaaaaaaaaaaa";
	}
	for ( count: Int from 0 to 1) { //1.0
		defstring := defstring + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
	} 
	var a := A{ name := defstring };
	a.save();
	while(a.list.length < 1000 ){
		a.list.add(newB(defstring));
	}
}