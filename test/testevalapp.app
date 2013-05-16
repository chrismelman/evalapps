application testevalapp

imports webservices/services/interface
page root(){
	 
}

derive webservices for A , with nameproperty name 
entity A{
	name : String
	listb -> List<B>
	
}

entity B {
	name :: String
	listc -> List<C>
	
	
}

function newB(name : String) : B {
		var b := B {name := name};
		b.save(); 
		while(b.listc.length < 1){
			b.listc.add(newC(name)); 
		}
		return b;
	}

entity C {
	name :: String
	
}  

function newC (name : String) : C {
	  var c := C{name := name};
	  c.save();
	  return c;
}
init {
	var defstring := "aaaa";
	var a := A{ name := defstring };
	a.save();
	while(a.listb.length < 1){
		a.listb.add(newB(defstring));
	}
	
	
}