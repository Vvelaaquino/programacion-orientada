Contrincantes Soldado;
Contrincantes Lanovia;
Contrincantes Leonardo;
Contrincantes Travis;
Contrincantes Oscar;
Contrincantes pe1;
Contrincantes pe2;
PFont Insomnia;
PFont HollywoodCapital;
PFont conjuanito;
int  inicio;
int  seleccion;
int  seleccion2;
int  batalla;
int  ganador;
int pantalla = 0;
int vida1 = 100;
int vida2 = 100;
int jugador1;
int jugador2;
int r = 100;
int g = 100;
int turno;


void setup(){
  size (750, 750);
  background(23,56,12);
  

  Soldado = new Contrincantes("Soladado Patoso", 100,5,0);
  Lanovia = new Contrincantes("La novia", 100, 6, 1);
  Leonardo = new Contrincantes("Leonardo", 100, 5, 2);
  Travis = new Contrincantes("Travis", 100, 5, 3);
  Oscar = new Contrincantes("Oscar", 100, 6, 4);
  Insomnia = createFont("Insomnia.ttf", 50);
  HollywoodCapital = createFont("HollywoodCapital.ttf",50);
  conjuanito = createFont("conjuanito.ttf", 50);
  
}

void draw(){
 
  
  switch (pantalla){
    
    case 0:
     inicio();
     
    break;
    
    case 1:
     seleccion();
     pushMatrix();
     translate(100,300);
     Soldado.crear();
     popMatrix();
    
      pushMatrix();
     translate(380,300);
     Lanovia.crear();
     popMatrix();
     
     pushMatrix();
     translate(650,300);
     Leonardo.crear();
      popMatrix();
     
     pushMatrix();
     translate(500,600);
     Travis.crear();
      popMatrix();
     
     pushMatrix();
     translate(230,600);
     Oscar.crear();
     popMatrix();
     
    break;
    
    case 2:
      seleccion2();
     pushMatrix();
     translate(100,300);
     Soldado.crear();
     popMatrix();
    
      pushMatrix();
     translate(380,300);
     Lanovia.crear();
     popMatrix();
     
     pushMatrix();
     translate(650,300);
     Leonardo.crear();
      popMatrix();
     
     pushMatrix();
     translate(500,600);
     Travis.crear();
      popMatrix();
     
     pushMatrix();
     translate(230,600);
     Oscar.crear();
     popMatrix();
     
     
    break;
    
    case 3:
     batalla();
  
    break;
    
    case 4:
     ganador();
   
    break;
  }
}

class Contrincantes{
  String  nombre;
  int ataque;
  int salud;
  int Personaje;
  
  Contrincantes( String nombre_, int salud_, int ataque_,int Personaje_){
    
    nombre =  nombre_;
    ataque = ataque_;
    salud = salud_;
    Personaje = Personaje_;
  }

void crear(){
  
  switch(Personaje){
  case 0:
  pushMatrix(); //SOL
  
  noStroke();
  
  // Cabeza SOL
  fill(193,161,126);
  rectMode(CENTER);
  ellipse(0,-194,70,70); 
  
   fill (62,80,70);
  rectMode(CENTER);
  rect(0,-230,70,35);
  
  fill (62,74,72);
  rectMode(CENTER);
  rect(0,-210,74,8);
  
  // Cuello SOL
  fill(193,161,126);
  rectMode(CENTER);
  rect(0,-157,15,15);
  

  
  
  //Panza SOL
  fill(62,80,70);
  rectMode(CENTER);
 ellipse(0,-95,85,125);
  
  
  //Brazo SOL 1
  fill(62,90,70);
  rectMode(CENTER);
  rect(-40,-90,30,110,15,0,50,50);
  
  //Brazo SOL 2
  fill(62,90,70);
  rectMode(CENTER);
  rect(40,-90,30,110,0,15,50,50);
  

   //Pierna SOL 1
  fill(62,90,70);
  rectMode(CENTER);
  rect(-15,25,25,125);
  
  //Pierna SOL 2
  fill(62,90,70);
  rectMode(CENTER);
  rect(15,25,25,125);
  
  //Cinto SOL 
   fill(0);
  rectMode(CENTER);
  rect(0,-40,52,15);
  
  
   //Mano SOL 1
  fill(193,161,126);
  rectMode(CENTER);
  rect(-40,-33,30,20,15,0,50,50);
  
  //Mano SOL 2
  fill(193,161,126);
  rectMode(CENTER);
  rect(40,-33,30,20,0,15,50,50);
  
  
  //Zapato SOL 1
  fill(0);
  rectMode(CENTER);
  rect(-15,80,25,15);
 
  
  //Zapato SOL 2
  fill(0);
  rectMode(CENTER);
  rect(15,80,25,15);
  
  
  popMatrix();
  break;
  
  
  case 1:
  
  pushMatrix(); //KILL BILL
  
  //Cabello KILL BILL
  noStroke();
  fill(243,180,96);
  rectMode(CENTER);
  rect(0,-165,70,150,50,50,50,50);
 

  //Cabeza KILL BILL
  fill(240,187,143);
  rectMode(CENTER);
  rect(0,-192,60,60,50);
  

  //Raiz  KILL BILL
  fill (201,147,87);
  rectMode(CENTER);
  rect(0,-230,7,19,3,3,0,0);
  
  
  //Cuello  KILL BILL
  fill(240,187,143);
  rectMode(CENTER);
  rect(0,-157,15,15);
  
  //Pecho KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(0,-120,60,60,0,0,10,10);
  
 
  
  //Escote  KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(0,-141,40,18);
  
  //Escote 2 
 fill(0);
 triangle(-0,-100,-15,-150,15,-150);
 fill(240,187,143);
  triangle(-0,-110,-10,-150,10,-150);
 
 
  //Cadera  KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(0,-70,55,55,45,45,0,0);
  
  //Pierna 1   KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(-16,14,23,115);
  
  //Pierna 2  KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(16,14,23,115);
  
  //Brazo 1 KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(-40,-95,25,110,15,0,50,50);
  
  //brazo 2 KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(40,-95,25,110,0,15,50,50);
  
  //Mano  1  KILL BILL
  fill(240,187,143);
  rectMode(CENTER);
  rect(-40,-33,30,20,15,0,50,50);
  
  //Mano  2  KILL BILL
  fill(240,187,143);
  rectMode(CENTER);
  rect(40,-33,30,20,0,15,50,50);
  
  //Zapato 1  KILL BILL
  fill(233,164,47);
  rectMode(CENTER);
  ellipse(16,81,30,25);
  
  
  //Zapato 2 BILL BILL
  fill(233,164,47);
  rectMode(CENTER);
  ellipse(-16,81,30,25);
  

  popMatrix();
  break;
  
  
  case 2:
 //Cabello LEO
  noStroke();
  fill(48,45,35);
  rectMode(CENTER);
  rect(0,-230,60,15); 
  rect(0,-238,60,10,10);

  //Cabeza LEO
  fill(222,157,119);
  rectMode(CENTER);
  rect(0,-194,60,60,20,20,10,10); 
  
  //Cabello frente LEO
  fill(48,45,35);
  triangle(-32,-225,-10,-225,-32,-193);
  triangle(32,-225,0,-225,32,-193);
 // triangle(-6,-240,3,-230,6,-205);
  
  
  //Cuello LEO
  fill(222,157,119);
  rectMode(CENTER);
  rect(0,-157,15,15);
  
  
   //Pecho LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(0,-120,60,60,0,0,15,15);
  
  
  //Escote LEO
  fill(0);
  rectMode(CENTER);
  rect(0,-141,40,18);
  
  //Escote 2  LEO
 fill(0);
 triangle(-0,-100,-15,-150,15,-150);
 fill(255);
  triangle(-0,-110,-10,-150,10,-150);
 
 
  //Cadera  LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(0,-70,65,55,45,45,0,0);
  
   //Brazo 1 LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(-40,-95,33,110,15,0,50,50);
  
  //brazo 2 LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(40,-95,33,110,0,15,50,50);
  
  //Mano  1  LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(-40,-33,30,20,15,0,50,50);
  
  //Mano  2  LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(40,-33,30,20,0,15,50,50);
  
  
   //Pierna LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(-15,25,25,125);
  
  //Pierna LEO
  fill(119,113,106);
  rectMode(CENTER);
  rect(15,25,25,125);
  
  //Cinto LEO 
   fill(0);
  rectMode(CENTER);
  rect(0,-40,58,23);
  
  
   //Mano LEO 1
  fill(222,157,119);
  rectMode(CENTER);
  rect(-40,-33,30,20,15,0,50,50);
  
  //Mano LEO 2
  fill(222,157,119);
  rectMode(CENTER);
  rect(40,-33,30,20,0,15,50,50);
  
  
  //Zapato LEO 1
  fill(0);
  rectMode(CENTER);
  rect(-15,80,25,15);
 
  
  //Zapato LEO 2
  fill(0);
  rectMode(CENTER);
  rect(15,80,25,15);
  
  
break;

case 3:

//Cabeza TRAVIS
   fill(203,161,149);
  rectMode(CENTER);
  ellipse(0,-194,70,70); 

   
  //Cabello TRAVIS
  noStroke();
  fill(48,45,35);
  rectMode(CENTER);
  rect(0,-230,30,15); 
  rect(0,-238,30,10,10);
  
  //Cuello TRAVIS
  fill(203,161,149);
  rectMode(CENTER);
  rect(0,-157,15,15);
  
   //Pecho LEO
  fill(44,55,47);
  rectMode(CENTER);
  rect(0,-120,60,60,0,0,15,15);
  
  
  //Escote TRAVIS
  fill(62,90,70);
  rectMode(CENTER);
  rect(0,-141,40,18);
  
  //Escote 2  TRAVIS
 fill(62,90,70);
 triangle(-0,-100,-15,-150,15,-150);
 fill(255);
  triangle(-0,-110,-10,-150,10,-150);
  
    //Pierna TRAVIS
  fill(119,113,106);
  rectMode(CENTER);
  rect(-15,25,25,125);
  
  //Pierna 2 TRAVIS
  fill(119,113,106);
  rectMode(CENTER);
  rect(15,25,25,125);
 
  //Cadera TRAVIS
  fill(44,55,47);
  rectMode(CENTER);
  rect(0,-68,65,95,45,45,0,0);
  
   //Brazo 1 TRAVIS
  fill(44,55,47);
  rectMode(CENTER);
  rect(-40,-95,33,110,15,0,50,50);
  
  //brazo 2 TRAVIS
  fill(44,55,47);
  rectMode(CENTER);
  rect(40,-95,33,110,0,15,50,50);
  
   //Mano TRAVIS 1
  fill(203,161,149);
  rectMode(CENTER);
  rect(-40,-33,30,20,15,0,50,50);
  
  //Mano TRAVIS 2
  fill(203,161,149);
  rectMode(CENTER);
  rect(40,-33,30,20,0,15,50,50);
  
  
  //Zapato TRAVIS 1
  fill(0);
  rectMode(CENTER);
  rect(-15,80,25,15);
  
  
  //Zapato TRAVIS 2
  fill(0);
  rectMode(CENTER);
  rect(15,80,25,15);
break;

case 4:

  //Cabeza KILL BILL
  fill(252,196,39);
  rectMode(CENTER);
  rect(0,-198,70,70,90);
  
  //Pecho KILL BILL
  fill(252,196,39);
  rectMode(CENTER);
  rect(0,-120,60,60,0,0,10,10);
  
 
  //Cadera  KILL BILL
  fill(252,196,39);
  rectMode(CENTER);
  rect(0,-70,55,55,45,45,0,0);
  
  //Pierna 1   KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(-16,14,23,115);
  
  //Pierna 2  KILL BILL
  fill(252,196,39);
  rectMode(CENTER);
  ellipse (20,14,23,115);
  
  //Brazo 1 KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(-40,-95,25,110,15,0,50,50);
  
  //brazo 2 KILL BILL
  fill(231,157,36);
  rectMode(CENTER);
  rect(40,-95,25,110,0,15,50,50);
  
  //Mano  1  KILL BILL
  fill(240,187,143);
  rectMode(CENTER);
  rect(-40,-33,30,20,15,0,50,50);
  
  //Mano  2  KILL BILL
  fill(240,187,143);
  rectMode(CENTER);
  rect(40,-33,30,20,0,15,50,50);
  
  //Zapato 1  KILL BILL
  fill(233,164,47);
  rectMode(CENTER);
  ellipse(16,81,30,25);
  
  
  //Zapato 2 BILL BILL
  fill(233,164,47);
  rectMode(CENTER);
  ellipse(-16,81,30,25);
break;

   }
}
}


void inicio() {
  background(0);
  
 pushMatrix();
  
    textFont(Insomnia);
    textSize(100);
    fill(235);
    text("F I L M",185, 280);
    textSize(95);
    fill(220);
    text(" A T T A C K",0,480);
    
    textFont (conjuanito);
    textSize(25);
    fill(255);
    text("Da click en la pantala para continuar",70, 40);
    popMatrix();
    if (mousePressed)
  {
  pantalla =1;
}
  
}



void  seleccion() {
   background(255);
  
 
  
    textFont (HollywoodCapital);
    textSize(10);
    fill(0);
    text( ("Soldado Patoso 'a' "),180,100); 
  
  if (keyPressed){
    if(key == 'a'){
    pantalla = 2;
    pe1 = Soldado;
    jugador1 = 0;
  
}
  }

    textSize(10);
    fill(0);
    text( ("La Novia 'b' "),430,100); 
    
if (keyPressed){
    if(key == 'b'){
    pantalla = 2; 
   pe1 = Lanovia;
   jugador1 = 0;
  
}
}
   textSize(10);
    fill(0);
    text( ("Dom Cobb 'c' "),530,100); 

if (keyPressed){
    if(key == 'c'){
    pantalla = 2;
   pe1 = Leonardo;
   jugador1 = 0;
     
  
}
}

 textSize(10);
    fill(0);
    text( ("Travis 'd' "),580,500);
    
   if (keyPressed){
    if(key == 'd'){
    pantalla = 2;
   pe1 = Travis;
   jugador1 = 0;
   
  
  
}
   }
   
   textSize(10);
    fill(0);
    text( ("Estatuilla Oscar 'e' "),310,500); 

if (keyPressed){
    if(key == 'e'){
    pantalla = 2;
    translate(349,600);
    pe1 = Oscar;
    jugador1 = 0;
  
  
}
}
   }



void  seleccion2() {
  
  background(0);
  
    textSize(10);
    fill(255);
    text( ("Soldado Patoso 'q' "),180,100); 
 
  if (keyPressed){
    if(key == 'q'){
    pantalla = 3;
    pe2 = Soldado;
    jugador2 = 0;
      
   
}
  }
  
  textSize(10);
    fill(255);
    text( ("La Novia 'w' "),430,100); 
    
if (keyPressed){
    if(key == 'w'){
     pantalla = 3;
     pe2 = Lanovia;
     jugador2 = 0;
   
}
}

    textSize(10);
    fill(255);
    text( ("Dom Cobb 'o' "),530,100); 
    
if (keyPressed){
    if(key == 'o'){
     pantalla = 3;
     pe2 = Leonardo;
     jugador2 = 0;
    
}
}

   textSize(10);
    fill(255);
    text( ("Travis 'r' "),580,500); 
    
if (keyPressed){
    if(key == 'r'){
     pantalla = 3;
     pe2 = Travis;
     jugador2 = 0;
  
}
}

   textSize(10);
    fill(255);
    text( ("Estatuilla Oscar 't' "),310,500); 
    
if (keyPressed){
    if(key == 't'){
     pantalla = 3;
     pe2 = Oscar;
     jugador2 = 0;
  
  
}
}
}



void  batalla () {
  
  background(56);
  
    textFont(HollywoodCapital);
    textSize(35);
    fill(0);
  text("Contrincante 1", 100, 80);
  text("vs", 390, 80);
  textSize(10);
  text("ATACA CON X",85, 90);
  
    textFont(HollywoodCapital);
    textSize(10);
    fill(0);
    text("ATACA CON M",650, 90);
   textSize(35); 
  text("Contrincante 2", 500,80);
  fill(255);
  rect(250,100,g,35);
  rect(570,100,r,35);
  fill(25);
  rect(375,600,750,135);
  
  
 
 pushMatrix();
if (jugador1 == 0){
  translate(200,500);
     pe1.crear();
   
    
  }

  
   if (jugador1 == 1){
      translate(100,100);
     pe1.crear();
    
  }
  

  
  if (jugador1 == 2){
     translate(100,100);
     pe1.crear();
    
  }

  
   if (jugador1 == 3){
     pe1.crear();
    
  }
  

  
  if (jugador1 == 4){
     pe1.crear();
    
  }
  
    popMatrix();
   
    pushMatrix();
  
  if (jugador2 == 0){
     translate(550,500);
     pe2.crear();
    
  }
  
 
  
  if (jugador2 == 1){
    translate(700,500);
     pe2.crear();
    
  }
  
 
 
  
  if (jugador2 == 2){
     pe2.crear();
    
  }
  
 
  
  if (jugador2 == 3){
     pe2.crear();
    
  }
  
  
  
  if (jugador2 == 4){
     pe2.crear();
    
  }
  
  popMatrix();

if(vida1 <= 0){

pantalla = 4;

}
if(vida2 <= 0){
  
  pantalla = 4;
}                        
   

  
   switch(turno){
    case 0:
    
   keyPressed();
   if(key == 'x'){  
     
   pe1.salud -= pe2.ataque;
  vida1 = pe1.salud;
  r = pe1.salud;
  turno = 1;
  
   }
   
   break;
   
   
   case 1:
    keyPressed();
   if(key == 'm'){

   pe2.salud -= pe1.ataque;
  vida2 = pe2.salud;
  g = pe2.salud;
  turno = 0;
  
  
   }
  break;
  
   }
   }
   

void  ganador () {
  
  
  
  
    if( vida1 <=0){
       background(23,56,122); 
    textFont(HollywoodCapital);
    textSize(35);
    fill(255);
    text("EL ESTELAR ES PARA:JUGADOR 1",185, 280);
    textFont(HollywoodCapital);
    textSize(25);
    fill(0);
    text("CLICK EN '+' PARA VOLVER AL INICIO",70,40);
  
pe1.salud = 100;
pe2.salud =100;
vida1 =100;
r = pe1.salud;
g = pe2.salud;
    
    }

    if( vida2 <=0){
       background(23,56,122); 
    textFont(HollywoodCapital);
    textSize(35);
    fill(0);
    text("EL ESTELAR ES PARA:JUGADOR 2",185, 280);
    textFont(HollywoodCapital);
    textSize(25);
    fill(255);
    text("CLICK EN '+' PARA VOLVER AL INICIO",70,40);
    
    
    pe1.salud = 100;
pe2.salud =100;
vida2 =100;
r = pe1.salud;
g = pe2.salud;
    }

    
    keyPressed();
  if(key == '+'){
    fill(255); 
    pantalla = 0;
   
  
    
    }

    }
void jugador1(){
}

void jugador2(){
}
    
    
    
   
  
