application linearmodel

imports webservices/services/interface
page root(){
	 
}

// derive webservices for A , with nameproperty name 
entity A{
	name : String
	list -> List<B>
	
}

entity B {
	name :: String
	list -> List<C>
	
	
}

function newB(name : String) : B {
		var ent := B {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newC(name)); 
		}
		return ent;
	}
	
	entity C {
	name :: String
	list -> List<D>
	
	
}

function newC(name : String) : C {
		var ent := C {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newD(name)); 
		}
		return ent;
	}
	
entity D {
	name :: String
	list -> List<E>
	
	
}

function newD(name : String) : D {
		var ent := D {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newE(name)); 
		}
		return ent;
	}
	
entity E {
	name :: String
	list -> List<F>
	
	
}

function newE(name : String) : E {
		var ent := E {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newF(name)); 
		}
		return ent;
	}

entity F {
	name :: String
	
}  

function newF (name : String) : F {
	  var ent := F{name := name}; 
	  ent.save();
	  return ent;
}

page number(){
	
	par{"A " output(A.all().length)}
	par{"B " output(B.all().length)}
	par{"C " output(C.all().length)}
	par{"D " output(D.all().length)}
	par{"E " output(E.all().length)}
	par{"F " output(E.all().length)}
	
}

page addEntities(add : Int) {
	init{
		for( Count : Int from 0 to add ) {
			A.all()[0].list.add(newB("aaaa"));
		} 
	}
	
}

init {
	var defstring := "aaaa";
	var a := A{ name := defstring };
	a.save();
	while(a.list.length < 1){
		a.list.add(newB(defstring));
	}
}