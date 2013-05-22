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
// 	
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
// 	
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
	list -> List<G>
	
	
}

function newF(name : String) : F {
		var ent := F {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newG(name)); 
		}
		return ent;
	}
	
entity G { 
	name :: String
	list -> List<H>
	
	
}

function newG(name : String) : G {
		var ent := G {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newH(name)); 
		}
		return ent;
	}

entity H {
	name :: String
	list -> List<I>
	
	
}


function newH(name : String) : H {
		var ent := H {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newI(name)); 
		}
		return ent;
	}

entity I { 
	name :: String
	list -> List<J>
	
	
}

function newI(name : String) : I {
		var ent := I {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newJ(name)); 
		}
		return ent;
	}

entity J {
	name :: String
	list -> List<K>
}


function newJ(name : String) : J {
		var ent := J {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newK(name)); 
		}
		return ent;
	}
	
	entity K {
	name :: String
	list -> List<L>
	
	
}

function newK(name : String) : K {
		var ent := K {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newL(name)); 
		}
		return ent;
	}
	
entity L { 
	name :: String
	list -> List<M>
	
	
}

function newL(name : String) : L {
		var ent := L {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newM(name)); 
		}
		return ent;
	}

entity M {
	name :: String
	list -> List<N>
	
	
}


function newM(name : String) : M {
		var ent := M {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newN(name)); 
		}
		return ent;
	}

entity N { 
	name :: String
	list -> List<O>
	
	
}
// 
function newN(name : String) : N {
		var ent := N {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newO(name)); 
		}
		return ent;
	}

entity O {
	name :: String
	list -> List<P>
}


function newO(name : String) : O {
		var ent := O {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newP(name)); 
		}
		return ent;
}		
	entity P {
	name :: String
	list -> List<Q>
	
	
}

function newP(name : String) : P {
		var ent := P {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newQ(name)); 
		}
		return ent;
	}
	
entity Q { 
	name :: String
	list -> List<R>
	
	
}

function newQ(name : String) : Q {
		var ent := Q {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newR(name)); 
		}
		return ent;
	}

entity R {
	name :: String
	list -> List<S>
	
	
}


function newR(name : String) : R {
		var ent := R {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newS(name)); 
		}
		return ent;
	}

entity S { 
	name :: String
	list -> List<T>
	
	
}
// 
function newS(name : String) : S {
		var ent := S {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newT(name)); 
		}
		return ent;
	}

entity T {
	name :: String
	list -> List<U>
}


function newT(name : String) : T {
		var ent := T {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newU(name)); 
		}
		return ent;
	}
	
entity U {
	name :: String
	list -> List<V>
	
	
}

function newU(name : String) : U {
		var ent := U {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newV(name)); 
		}
		return ent;
	}
	
entity V { 
	name :: String
	list -> List<W>
	
	
}

function newV(name : String) : V {
		var ent := V {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newW(name)); 
		}
		return ent;
	}

entity W {
	name :: String
	list -> List<X>
	
	
}


function newW(name : String) : W {
		var ent := W {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newX(name)); 
		}
		return ent;
	}

entity X { 
	name :: String
	list -> List<Y>
	
	
}
// 
function newX(name : String) : X {
		var ent := X {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newY(name)); 
		}
		return ent;
	}

entity Y {
	name :: String
	list -> List<Z>
}


function newY(name : String) : Y {
		var ent := Y {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newZ(name)); 
		}
		return ent;
	}			
entity Z {
	name :: String 
	list -> List<A1>
} 

function newZ (name : String) : Z {
	  var ent := Z{name := name}; 
	  ent.save();
	  while(ent.list.length < 1){
			ent.list.add(newA1(name)); 
		}
	  return ent; 
}

entity A1{
	name : String 
	list -> List<B1>
	
}

function newA1(name : String) : A1 {
		var ent := A1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newB1(name)); 
		}
		return ent;
	}

entity B1 {
	name :: String
	list -> List<C1>
}

function newB1(name : String) : B1 {
		var ent := B1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newC1(name)); 
		}
		return ent;
	}
// 	
entity C1 {
	name :: String
	list -> List<D1>
}

function newC1(name : String) : C1 {
		var ent := C1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newD1(name)); 
		}
		return ent;
	}
// 	
entity D1 {
	name :: String
	list -> List<E1>
	
	
}

function newD1(name : String) : D1 {
		var ent := D1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newE1(name)); 
		}
		return ent;
	}
	
entity E1 {
	name :: String
	list -> List<F1>
	
	
}

function newE1(name : String) : E1 {
		var ent := E1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newF1(name)); 
		}
		return ent;
	}

entity F1 {
	name :: String
	list -> List<G1>
	
	
}

function newF1(name : String) : F1 {
		var ent := F1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newG1(name)); 
		}
		return ent;
	}
	
entity G1 { 
	name :: String
	list -> List<H1>
	
	
}

function newG1(name : String) : G1 {
		var ent := G1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newH1(name)); 
		}
		return ent;
	}

entity H1 {
	name :: String
	list -> List<I1>
	
	
}


function newH1(name : String) : H1 {
		var ent := H1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newI1(name)); 
		}
		return ent;
	}

entity I1 { 
	name :: String
	list -> List<J1>
	
	
}

function newI1(name : String) : I1 {
		var ent := I1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newJ1(name)); 
		}
		return ent;
	}

entity J1 {
	name :: String
	list -> List<K1>
}


function newJ1(name : String) : J1 {
		var ent := J1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newK1(name)); 
		}
		return ent;
	}
	
	entity K1 {
	name :: String
	list -> List<L1>
	
	
}

function newK1(name : String) : K1 {
		var ent := K1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newL1(name)); 
		}
		return ent;
	}
	
entity L1 { 
	name :: String
	list -> List<M1>
	
	
}

function newL1(name : String) : L1 {
		var ent := L1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newM1(name)); 
		}
		return ent;
	}

entity M1 {
	name :: String
	list -> List<N1>
	
	
}


function newM1(name : String) : M1 {
		var ent := M1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newN1(name)); 
		}
		return ent;
	}

entity N1 { 
	name :: String
	list -> List<O1>
	
	
}
// 
function newN1(name : String) : N1 {
		var ent := N1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newO1(name)); 
		}
		return ent;
	}

entity O1 {
	name :: String
	list -> List<P1>
}


function newO1(name : String) : O1 {
		var ent := O1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newP1(name)); 
		}
		return ent;
}		
	entity P1 {
	name :: String
	list -> List<Q1>
	
	
}

function newP1(name : String) : P1 {
		var ent := P1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newQ1(name)); 
		}
		return ent;
	}
	
entity Q1 { 
	name :: String
	list -> List<R1>
	
	
}

function newQ1(name : String) : Q1 {
		var ent := Q1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newR1(name)); 
		}
		return ent;
	}

entity R1 {
	name :: String
	list -> List<S1>
	
	
}


function newR1(name : String) : R1 {
		var ent := R1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newS1(name)); 
		}
		return ent;
	}

entity S1 { 
	name :: String
	list -> List<T1>
	
	
}
// 
function newS1(name : String) : S1 {
		var ent := S1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newT1(name)); 
		}
		return ent;
	}

entity T1 {
	name :: String
	list -> List<U1>
}


function newT1(name : String) : T1 {
		var ent := T1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newU1(name)); 
		}
		return ent;
	}
	
entity U1 {
	name :: String
	list -> List<V1>
	
	
}

function newU1(name : String) : U1 {
		var ent := U1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newV1(name)); 
		}
		return ent;
	}
	
entity V1 { 
	name :: String
	list -> List<W1>
	
	
}

function newV1(name : String) : V1 {
		var ent := V1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newW1(name)); 
		}
		return ent;
	}

entity W1 {
	name :: String
	list -> List<X1>
	
	
}


function newW1(name : String) : W1 {
		var ent := W1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newX1(name)); 
		}
		return ent;
	}

entity X1 { 
	name :: String
	list -> List<Y1>
	
	
}
// 
function newX1(name : String) : X1 {
		var ent := X1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newY1(name)); 
		}
		return ent;
	}

entity Y1 {
	name :: String
	list -> List<Z1>
}


function newY1(name : String) : Y1 {
		var ent := Y1 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newZ1(name)); 
		}
		return ent;
	}			
entity Z1 {
	name :: String 
	list -> List<A2>
} 

function newZ1 (name : String) : Z1 {
	  var ent := Z1{name := name}; 
	  ent.save();
	  while(ent.list.length < 1){
			ent.list.add(newA2(name)); 
		}
	  return ent; 
}

entity A2{
	name : String 
	list -> List<B2>
	
}

function newA2(name : String) : A2 {
		var ent := A2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newB2(name)); 
		}
		return ent;
	}

entity B2 {
	name :: String
	list -> List<C2>
}

function newB2(name : String) : B2 {
		var ent := B2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newC2(name)); 
		}
		return ent;
	}
// 	
entity C2 {
	name :: String
	list -> List<D2>
}

function newC2(name : String) : C2 {
		var ent := C2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newD2(name)); 
		}
		return ent;
	}
// 	
entity D2 {
	name :: String
	list -> List<E2>
	
	
}

function newD2(name : String) : D2 {
		var ent := D2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newE2(name)); 
		}
		return ent;
	}
	
entity E2 {
	name :: String
	list -> List<F2>
	
	
}

function newE2(name : String) : E2 {
		var ent := E2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newF2(name)); 
		}
		return ent;
	}

entity F2 {
	name :: String
	list -> List<G2>
	
	
}

function newF2(name : String) : F2 {
		var ent := F2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newG2(name)); 
		}
		return ent;
	}
	
entity G2 { 
	name :: String
	list -> List<H2>
	
	
}

function newG2(name : String) : G2 {
		var ent := G2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newH2(name)); 
		}
		return ent;
	}

entity H2 {
	name :: String
	list -> List<I2>
	
	
}


function newH2(name : String) : H2 {
		var ent := H2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newI2(name)); 
		}
		return ent;
	}

entity I2 { 
	name :: String
	list -> List<J2>
	
	
}

function newI2(name : String) : I2 {
		var ent := I2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newJ2(name)); 
		}
		return ent;
	}

entity J2 {
	name :: String
	list -> List<K2>
}


function newJ2(name : String) : J2 {
		var ent := J2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newK2(name)); 
		}
		return ent;
	}
	
	entity K2 {
	name :: String
	list -> List<L2>
	
	
}

function newK2(name : String) : K2 {
		var ent := K2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newL2(name)); 
		}
		return ent;
	}
	
entity L2 { 
	name :: String
	list -> List<M2>
	
	
}

function newL2(name : String) : L2 {
		var ent := L2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newM2(name)); 
		}
		return ent;
	}

entity M2 {
	name :: String
	list -> List<N2>
	
	
}


function newM2(name : String) : M2 {
		var ent := M2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newN2(name)); 
		}
		return ent;
	}

entity N2 { 
	name :: String
	list -> List<O2>
	
	
}
// 
function newN2(name : String) : N2 {
		var ent := N2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newO2(name)); 
		}
		return ent;
	}

entity O2 {
	name :: String
	list -> List<P2>
}


function newO2(name : String) : O2 {
		var ent := O2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newP2(name)); 
		}
		return ent;
}		
	entity P2 {
	name :: String
	list -> List<Q2>
	
	
}

function newP2(name : String) : P2 {
		var ent := P2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newQ2(name)); 
		}
		return ent;
	}
	
entity Q2 { 
	name :: String
	list -> List<R2>
	
	
}

function newQ2(name : String) : Q2 {
		var ent := Q2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newR2(name)); 
		}
		return ent;
	}

entity R2 {
	name :: String
	list -> List<S2>
	
	
}


function newR2(name : String) : R2 {
		var ent := R2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newS2(name)); 
		}
		return ent;
	}

entity S2 { 
	name :: String
	list -> List<T2>
	
	
}
// 
function newS2(name : String) : S2 {
		var ent := S2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newT2(name)); 
		}
		return ent;
	}

entity T2 {
	name :: String
	list -> List<U2>
}


function newT2(name : String) : T2 {
		var ent := T2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newU2(name)); 
		}
		return ent;
	}
	
entity U2 {
	name :: String
	list -> List<V2>
	
	
}

function newU2(name : String) : U2 {
		var ent := U2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newV2(name)); 
		}
		return ent;
	}
	
entity V2 { 
	name :: String
	list -> List<W2>
	
	
}

function newV2(name : String) : V2 {
		var ent := V2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newW2(name)); 
		}
		return ent;
	}

entity W2 {
	name :: String
	list -> List<X2>
	
	
}


function newW2(name : String) : W2 {
		var ent := W2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newX2(name)); 
		}
		return ent;
	}

entity X2 { 
	name :: String
	list -> List<Y2>
	
	
}
// 
function newX2(name : String) : X2 {
		var ent := X2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newY2(name)); 
		}
		return ent;
	}

entity Y2 {
	name :: String
	list -> List<Z2>
}


function newY2(name : String) : Y2 {
		var ent := Y2 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newZ2(name)); 
		}
		return ent;
	}			
entity Z2 {
	name :: String 
	list -> List<A3>
} 

function newZ2 (name : String) : Z2 {
	  var ent := Z2{name := name}; 
	  ent.save();
	  while(ent.list.length < 1){
			ent.list.add(newA3(name)); 
		}
	  return ent; 
}
entity A3{
	name : String 
	list -> List<B3>
	
}

function newA3(name : String) : A3 {
		var ent := A3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newB3(name)); 
		}
		return ent;
	}

entity B3 {
	name :: String
	list -> List<C3>
}

function newB3(name : String) : B3 {
		var ent := B3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newC3(name)); 
		}
		return ent;
	}
// 	
entity C3 {
	name :: String
	list -> List<D3>
}

function newC3(name : String) : C3 {
		var ent := C3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newD3(name)); 
		}
		return ent;
	}
	
entity D3 {
	name :: String
	list -> List<E3>
	
	
}

function newD3(name : String) : D3 {
		var ent := D3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newE3(name)); 
		}
		return ent;
	}
	
entity E3 {
	name :: String
	list -> List<F3>
	
	
}

function newE3(name : String) : E3 {
		var ent := E3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newF3(name)); 
		}
		return ent;
	}

entity F3 {
	name :: String
	list -> List<G3>
	
	
}

function newF3(name : String) : F3 {
		var ent := F3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newG3(name)); 
		}
		return ent;
	}
	
entity G3 { 
	name :: String
	list -> List<H3>
	
	
}

function newG3(name : String) : G3 {
		var ent := G3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newH3(name)); 
		}
		return ent;
	}

entity H3 {
	name :: String
	list -> List<I3>
	
	
}


function newH3(name : String) : H3 {
		var ent := H3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newI3(name)); 
		}
		return ent;
	}

entity I3 { 
	name :: String
	list -> List<J3>
	
	
}

function newI3(name : String) : I3 {
		var ent := I3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newJ3(name)); 
		}
		return ent;
	}

entity J3 {
	name :: String
	list -> List<K3>
}


function newJ3(name : String) : J3 {
		var ent := J3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newK3(name)); 
		}
		return ent;
	}
	
	entity K3 {
	name :: String
	list -> List<L3>
	
	
}

function newK3(name : String) : K3 {
		var ent := K3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newL3(name)); 
		}
		return ent;
	}
	
entity L3 { 
	name :: String
	list -> List<M3>
	
	
}

function newL3(name : String) : L3 {
		var ent := L3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newM3(name)); 
		}
		return ent;
	}

entity M3 {
	name :: String
	list -> List<N3>
	
	
}


function newM3(name : String) : M3 {
		var ent := M3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newN3(name)); 
		}
		return ent;
	}

entity N3 { 
	name :: String
	list -> List<O3>
	
	
}
// 
function newN3(name : String) : N3 {
		var ent := N3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newO3(name)); 
		}
		return ent;
	}

entity O3 {
	name :: String
	list -> List<P3>
}


function newO3(name : String) : O3 {
		var ent := O3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newP3(name)); 
		}
		return ent;
}		
	entity P3 {
	name :: String
	list -> List<Q3>
	
	
}

function newP3(name : String) : P3 {
		var ent := P3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newQ3(name)); 
		}
		return ent;
	}
	
entity Q3 { 
	name :: String
	list -> List<R3>
	
	
}

function newQ3(name : String) : Q3 {
		var ent := Q3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newR3(name)); 
		}
		return ent;
	}

entity R3 {
	name :: String
	list -> List<S3>
	
	
}


function newR3(name : String) : R3 {
		var ent := R3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newS3(name)); 
		}
		return ent;
	}

entity S3 { 
	name :: String
	list -> List<T3>
	
	
}
// 
function newS3(name : String) : S3 {
		var ent := S3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newT3(name)); 
		}
		return ent;
	}

entity T3 {
	name :: String
	list -> List<U3>
}


function newT3(name : String) : T3 {
		var ent := T3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newU3(name)); 
		}
		return ent;
	}
	
entity U3 {
	name :: String
	list -> List<V3>
	
	
}

function newU3(name : String) : U3 {
		var ent := U3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newV3(name)); 
		}
		return ent;
	}
	
entity V3 { 
	name :: String
	list -> List<W3>
	
	
}

function newV3(name : String) : V3 {
		var ent := V3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newW3(name)); 
		}
		return ent;
	}

entity W3 {
	name :: String
	list -> List<X3>
	
	
}


function newW3(name : String) : W3 {
		var ent := W3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newX3(name)); 
		}
		return ent;
	}

entity X3 { 
	name :: String
	list -> List<Y3>
	
	
}
// 
function newX3(name : String) : X3 {
		var ent := X3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newY3(name)); 
		}
		return ent;
	}

entity Y3 {
	name :: String
	list -> List<Z3>
}


function newY3(name : String) : Y3 {
		var ent := Y3 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newZ3(name)); 
		}
		return ent;
	}			
entity Z3 {
	name :: String 
	list -> List<A4>
} 

function newZ3 (name : String) : Z3 {
	  var ent := Z3{name := name}; 
	  ent.save();
	  while(ent.list.length < 1){
			ent.list.add(newA4(name)); 
		}
	  return ent; 
}

entity A4{
	name : String 
	list -> List<B4>
	
}

function newA4(name : String) : A4 {
		var ent := A4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newB4(name)); 
		}
		return ent;
	}

entity B4 {
	name :: String
	list -> List<C4>
}

function newB4(name : String) : B4 {
		var ent := B4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newC4(name)); 
		}
		return ent;
	}
// 	
entity C4 {
	name :: String
	list -> List<D4>
}

function newC4(name : String) : C4 {
		var ent := C4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newD4(name)); 
		}
		return ent;
	}
// 	
entity D4 {
	name :: String
	list -> List<E4>
	
	
}

function newD4(name : String) : D4 {
		var ent := D4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newE4(name)); 
		}
		return ent;
	}
	
entity E4 {
	name :: String
	list -> List<F4>
	
	
}

function newE4(name : String) : E4 {
		var ent := E4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newF4(name)); 
		}
		return ent;
	}

entity F4 {
	name :: String
	list -> List<G4>
	
	
}

function newF4(name : String) : F4 {
		var ent := F4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newG4(name)); 
		}
		return ent;
	}
	
entity G4 { 
	name :: String
	list -> List<H4>
	
	
}

function newG4(name : String) : G4 {
		var ent := G4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newH4(name)); 
		}
		return ent;
	}

entity H4 {
	name :: String
	list -> List<I4>
	
	
}


function newH4(name : String) : H4 {
		var ent := H4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newI4(name)); 
		}
		return ent;
	}

entity I4 { 
	name :: String
	list -> List<J4>
	
	
}

function newI4(name : String) : I4 {
		var ent := I4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newJ4(name)); 
		}
		return ent;
	}

entity J4 {
	name :: String
	list -> List<K4>
}


function newJ4(name : String) : J4 {
		var ent := J4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newK4(name)); 
		}
		return ent;
	}
	
	entity K4 {
	name :: String
	list -> List<L4>
	
	
}

function newK4(name : String) : K4 {
		var ent := K4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newL4(name)); 
		}
		return ent;
	}
	
entity L4 { 
	name :: String
	list -> List<M4>
	
	
}

function newL4(name : String) : L4 {
		var ent := L4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newM4(name)); 
		}
		return ent;
	}

entity M4 {
	name :: String
	list -> List<N4>
	
	
}


function newM4(name : String) : M4 {
		var ent := M4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newN4(name)); 
		}
		return ent;
	}

entity N4 { 
	name :: String
	list -> List<O4>
	
	
}
// 
function newN4(name : String) : N4 {
		var ent := N4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newO4(name)); 
		}
		return ent;
	}

entity O4 {
	name :: String
	list -> List<P4>
}


function newO4(name : String) : O4 {
		var ent := O4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newP4(name)); 
		}
		return ent;
}		
	entity P4 {
	name :: String
	list -> List<Q4>
	
	
}

function newP4(name : String) : P4 {
		var ent := P4 {name := name};
		ent.save(); 
		while(ent.list.length < 1){
			ent.list.add(newQ4(name)); 
		}
		return ent;
	}
	
entity Q4 { 
	name :: String
	// list -> List<R4>
	
	
}

function newQ4(name : String) : Q4 {
		var ent := Q4 {name := name};
		ent.save(); 
		// while(ent.list.length < 1){
		// 	ent.list.add(newR4(name)); 
		// }
		return ent;
	}
// 
// entity R4 {
// 	name :: String
// 	list -> List<S4>
// 	
// 	
// }
// 
// 
// function newR4(name : String) : R4 {
// 		var ent := R4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newS4(name)); 
// 		}
// 		return ent;
// 	}
// 
// entity S4 { 
// 	name :: String
// 	list -> List<T4>
// 	
// 	
// }
// // 
// function newS4(name : String) : S4 {
// 		var ent := S4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newT4(name)); 
// 		}
// 		return ent;
// 	}
// 
// entity T4 {
// 	name :: String
// 	list -> List<U4>
// }
// 
// 
// function newT4(name : String) : T4 {
// 		var ent := T4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newU4(name)); 
// 		}
// 		return ent;
// 	}
// 	
// entity U4 {
// 	name :: String
// 	list -> List<V4>
// 	
// 	
// }
// 
// function newU4(name : String) : U4 {
// 		var ent := U4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newV4(name)); 
// 		}
// 		return ent;
// 	}
// 	
// entity V4 { 
// 	name :: String
// 	list -> List<W4>
// 	
// 	
// }
// 
// function newV4(name : String) : V4 {
// 		var ent := V4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newW4(name)); 
// 		}
// 		return ent;
// 	}
// 
// entity W4 {
// 	name :: String
// 	list -> List<X4>
// 	
// 	
// }
// 
// 
// function newW4(name : String) : W4 {
// 		var ent := W4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newX4(name)); 
// 		}
// 		return ent;
// 	}
// 
// entity X4 { 
// 	name :: String
// 	list -> List<Y4>
// 	
// 	
// }
// // 
// function newX4(name : String) : X4 {
// 		var ent := X4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newY4(name)); 
// 		}
// 		return ent;
// 	}
// 
// entity Y4 {
// 	name :: String
// 	list -> List<Z4>
// }
// 
// 
// function newY4(name : String) : Y4 {
// 		var ent := Y4 {name := name};
// 		ent.save(); 
// 		while(ent.list.length < 1){
// 			ent.list.add(newZ4(name)); 
// 		}
// 		return ent;
// 	}			
// entity Z4 {
// 	name :: String 
// 	// list -> List<A4>
// } 
// 
// function newZ4 (name : String) : Z4 {
// 	  var ent := Z4{name := name}; 
// 	  ent.save();
// 	 //  while(ent.list.length < 1){
// 		// 	ent.list.add(newA4(name)); 
// 		// }
// 	  return ent; 
// }

init {
	var defstring := "aaaa";
	var a := A{ name := defstring };
	a.save();
	while(a.list.length < 9 ){
		a.list.add(newB(defstring));
	}
}