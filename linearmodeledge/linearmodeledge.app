application linearmodeledge

imports webservices/services/interface
page root(){
	 
}

derive webservices for A , with nameproperty name 
entity A{
	name : String
	list -> List<B>
	
	function resetedge() {
		var newList := List<B>();	
		newList.addAll(list.set());
		list := newList;
	}
	
	function addEdge(){
		list.addAll(list.set());	
	}
	
}

entity B {
	name :: String 
	list -> List<C>
	
	function resetedge() {
		var newList := List<C>();	
		newList.add(list[0]);
		list := newList;
	}
	
	function addEdge(){
		var rand := Random();
		var allEnts := C.all();
		list.add(allEnts[(rand.nextInt(allEnts.length) )]);		
	}
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
	
	function resetedge() {
		var newList := List<D>();	
		newList.add(list[0]);
		list := newList;
	}
	
	function addEdge(){
		var rand := Random();
		var allEnts := D.all();
		list.add(allEnts[(rand.nextInt(allEnts.length))]);	
	}
	
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
	
	function resetedge() {
		var newList := List<E>();	
		newList.add(list[0]);
		list := newList;
	}
	
	function addEdge(){
var rand := Random();
		var allEnts := E.all();
		list.add(allEnts[(rand.nextInt(allEnts.length) )]);	
	}
	
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
	 
	 
	function resetedge() {
		var newList := List<F>();	
		newList.add(list[0]);
		list := newList;
	}
	
	function addEdge(){
		var rand := Random();
		var allEnts := F.all();
		list.add(allEnts[(rand.nextInt(allEnts.length) )]);	
	}
	
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
	list -> List<B>
	
	function resetedge() {
		var newList := List<B>();	
		list := newList;
	}
	
	function addEdge(){
		var rand := Random();
		var allEnts := B.all();
		list.add(allEnts[(rand.nextInt(allEnts.length) )]);	
	}

}  

function newF (name : String) : F {
	  var ent := F{name := name}; 
	  ent.save();
	  return ent;
	  
	 
}

init {
	var defstring := "aaaa";
	var a := A{ name := defstring };
	a.save();
	while(a.list.length < 100){
		a.list.add(newB(defstring));
	}
}

function resetEdges(){
	// for(ent : A in A.all()) {
	// 	ent.resetedge();	
	// }
	for(ent : B in B.all()) {
		ent.resetedge();	
	}
	for(ent : C in C.all()) {
		ent.resetedge();	
	}
	for(ent : D in D.all()) {
		ent.resetedge();	
	}
	for(ent : E in E.all()) {
		ent.resetedge();	
	}
	for(ent : F in F.all()) {
		ent.resetedge();	
	}		
}

function setEdges(number : Int){
	resetEdges();
	
	// for(ent : A in A.all()) {
	// 	for(count : Int from 1 to number){
	// 		ent.addEdge();
	// 	}	
	// }
	for(ent : B in B.all()) {
		for(count : Int from 1 to number){
			ent.addEdge();
		}	
	}
	for(ent : C in C.all()) {
		for(count : Int from 1 to number){
			ent.addEdge();
		}	
	}
	for(ent : D in D.all()) {
		for(count : Int from 1 to number){
			ent.addEdge();
		}	
	}
	for(ent : E in E.all()) {
		for(count : Int from 1 to number){
			ent.addEdge();
		}	
	}
	for(ent : F in F.all()) {
		for(count : Int from 1 to number){
			ent.addEdge();
		}	
	}	
} 
page resetEdges(){
	init{
		resetEdges();  
		
	}
}

page setEdge(number : Int){
	init{
		setEdges(number);
	}
}

native class java.util.Random as Random {
    constructor()
    nextInt(Int) : Int
 }