int menu;
int menu1;
int intro;
int pelea;
int perder;
int V1 = 100;
int V2 = 100;
int Ju1;
int Ju2;
int pantalla=0;
int b = 100;
int b1 = 100;
int turno;
personajes moctezuma;
personajes aguila;
personajes malinche;
personajes cuauhtemoc;
personajes hernan;
personajes ba1;
personajes ba2;

void setup(){
size(700,600);
background(89,60,50);

moctezuma = new personajes("Moctezuma", 100,8, 0);
aguila = new personajes ("Aguila", 100, 10, 1);
malinche = new personajes ("Malinche", 100, 3,2);
cuauhtemoc = new personajes ( "cuauhtemoc",100, 5, 3);
hernan = new personajes ("Hernan", 100, 9,  4);

}

void draw(){

switch (pantalla){

  case 0:
  intro();
  break;

  case 1:
  menu();
  moctezuma.hacer();
  aguila.hacer();
  malinche.hacer();
  cuauhtemoc.hacer();
  hernan.hacer();
  break;
  
  case 2:
  menu1();
  moctezuma.hacer();
  aguila.hacer();
  malinche.hacer();
  cuauhtemoc.hacer();
  hernan.hacer();
  break;
  
  case 3:
  pelea();
  break;
  
  case 4:
  perder();
  break;
  
}
}

class personajes {

  String nombre;
  int ataque;
  int vida;
  int personaje;
  
  personajes( String nombre_,int vida_, int ataque_, int personaje_){
    
    nombre = nombre_;
    ataque = ataque_;
    vida = vida_;
    personaje = personaje_;
  
}

void hacer(){
  
switch (personaje){

  case 0:
  pushMatrix();//GORRO
fill(#FFB30D);
rect(80, 100, 30, 35);                           //rect (18, 8, 35, 35, 2, 2, 8, 18); MODIFICADO
popMatrix();

pushMatrix();//SOMBRERO
fill(#0C733B);
ellipse(95, 144, 55, 55);
popMatrix();

pushMatrix ();//CABEZA
fill (#FFDDB8);  
rect (67, 144, 55, 55, 7);   //67, 144, 55, 55)
popMatrix ();

pushMatrix();//OJO
fill(0);
circle(85, 160, 5);
circle(105, 160, 5);
popMatrix();

pushMatrix();//TORSO
fill(#FFDDB8);
rect(67, 200, 55, 80);
popMatrix();

pushMatrix();//BRAZ0 IZQUIERDO
fill(#FFDDB8);
rect (46, 200, 20, 75, 7);
popMatrix();

pushMatrix();//BRAZO DERECHO
fill(#FFDDB8);
rect (123, 200, 20, 75, 7);
popMatrix();

pushMatrix();//PIERNA DERECHA
fill(#FFDDB8);
rect (68, 280, 25, 75, 7);
popMatrix();

pushMatrix();//PIERNA IZQUIERDA
fill(#FFDDB8);
rect (96, 280, 25, 75, 7);
popMatrix();

pushMatrix();//FALDA
fill(#8F3000);
rect (67, 260, 55, 50, 7);
popMatrix();

pushMatrix();//FALDA
fill(#C71100);
rect (83, 260, 25, 50, 7);
popMatrix();
break;

case 1:                   //MODIFICADO
  pushMatrix();
noStroke();
fill(255);
rect (500, 300, 140, 45);
popMatrix();

pushMatrix();
fill(255);
rect (510, 260, 120, 45);
popMatrix();

pushMatrix();
fill(255);
rect (520, 210, 100, 55);
popMatrix();

pushMatrix();//OJO
fill(0);
circle(535, 230, 8);
popMatrix();

break;

case 2:                     //MODIFICADO
pushMatrix();//GORRO
fill(#9E5608);
rect(340, 360, 85, 65, 7);
popMatrix();

pushMatrix();//ROSTRO
fill(#DBA456);
rect(352, 375, 60, 55, 7);
popMatrix();

pushMatrix();//OJO
fill(0);
circle(367, 395, 5);
circle(393, 395, 5);
popMatrix();

pushMatrix();//PANTALON
fill(#DBA456);
rect (385, 490, 25, 75, 7);
popMatrix();

pushMatrix();//PANTALON
fill(#DBA456);
rect (355, 490, 25, 75, 7);
popMatrix();

pushMatrix();//TORSO
fill(255);
rect(352, 430, 60, 82, 7); 
popMatrix();

pushMatrix();//CINTURON
fill(#FF0900);
rect (352, 460, 63, 10, 7); 
popMatrix();

pushMatrix();//BRAZO
fill(#DBA456);
rect (332, 430, 20, 75, 7);
popMatrix();

pushMatrix();//BRAZO
fill(#DBA456);
rect (412, 430, 20, 75, 7);
popMatrix();
  
  break;
  
  case 3:                 //MODIFICADO
  pushMatrix();//GORRO
fill(#FFB30D);
rect(330, 60, 85, 75, 7);
popMatrix();

pushMatrix();//CABEZA
fill (#E8915F);  
rect(343, 80, 60, 55, 7);
popMatrix ();

pushMatrix();//OJO
fill(0);
circle(358, 100, 5);
circle(382, 100, 5);
popMatrix();

pushMatrix();//TORSO
fill(#E8915F);
rect(343, 135, 60, 82, 7);
popMatrix();

pushMatrix();//BRAZ0 IZQUIERDO
fill(#E8915F);
rect (323, 135, 20, 75, 7);
popMatrix();

pushMatrix();//BRAZO DERECHO
fill(#E8915F);
rect (402, 135, 20, 75, 7);
popMatrix();

pushMatrix();//PIERNA DERECHA
fill(#E8915F);
rect (345, 215, 25, 75, 7);
popMatrix();

pushMatrix();//PIERNA IZQUIERDA
fill(#E8915F);
rect (378, 215, 25, 75, 7);
popMatrix();

pushMatrix();//FALDA
fill(#8F3000);
rect (345, 200, 58, 50, 7);
popMatrix();

pushMatrix();//FALDA
fill(#C71100);
rect (363, 200, 25, 50, 7);
popMatrix();

pushMatrix();//FALDA
fill(#FFF900);
rect (368, 200, 15, 40, 7);
popMatrix();

pushMatrix();//SUETER
fill(#668009);
rect (343, 135, 25, 65, 7);
popMatrix();

pushMatrix();//SUETER
fill(#668009);
rect (382, 135, 25, 65, 7);
popMatrix();
  
break;

case 4:
  pushMatrix();//GORRO
fill(#F3F5F8);
rect(100, 360, 85, 75, 7);
popMatrix();

pushMatrix();//ROSTRO
fill(#FF9F75);
rect(112, 380, 60, 55, 7);
popMatrix();

pushMatrix();//TORSO
fill(#E4FFB8);
rect(112, 432, 60, 82, 7); 
popMatrix();

pushMatrix();//PANTALON
fill(#805A09);
rect (112, 480, 28, 75, 7);
popMatrix();

pushMatrix();//PANTALON
fill(#805A09);
rect(145, 480, 28, 75, 7);
popMatrix();

pushMatrix();//BRAZO
fill(#805A09);
rect (98, 432, 20, 75, 7);
popMatrix();

pushMatrix();//BRAZO
fill(#805A09);
rect (168, 432, 20, 75, 7);
popMatrix();

pushMatrix();//SUETER
fill(#804609);
rect (118, 432, 20, 75, 7);
popMatrix();

pushMatrix();//SUETER
fill(#804609);
rect (148, 432, 20, 75, 7);
popMatrix();

pushMatrix();//OJO
fill(0);
circle(125, 400, 5);
circle(150, 400, 5);
popMatrix();

break;
}
}
}
void intro (){
  
background(#FF130D);
textSize (40);
text("LA REVANCHA" , 200,200);
textSize (40);
text("DE",310,240);
textSize(40);
text("TENOCHTITLAN", 190,290);
textSize(20);
text("PRESIONA ENTER PARA SEGUIR", 180,400);
if (key == ENTER){
pantalla = 1;
}
}

void menu (){
  background (#E8310C);
  textSize(15);
  text(("Presiona w (Moctezuma)"),40,50);
  if(keyPressed){
    if(key == 'w'||key == 'W'){
   pantalla = 2;
   ba1=moctezuma;
    Ju1=0;
  }
    }
    textSize(15);
    text(("Presiona g (Cuauhtemoc)"), 250, 50);
    if(keyPressed){
    if(key == 'g' || key == 'G'){
   pantalla = 2;
   ba1=cuauhtemoc;
 Ju1=0;
    }
    }
    textSize(14);
    text(("Presiona"),35,400);
    text(("p"), 55,420);
    text(("(Hernan)"),35,440);
    if(keyPressed){
    if(key == 'p'|| key == 'P'){
   pantalla = 2;
   ba1= hernan;
 Ju1=0;
 }
    }
    
    textSize(15);
    text("Presiona", 435, 400);
    text(("k"), 460,420);
    text(("(Malinche)"),435,440);
    if(keyPressed){
    if(key == 'k'|| key == 'K'){
   pantalla = 2;
   ba1=malinche;
     Ju1=0;}
    }
    
    textSize(15);
    text(("Presiona j (Aguila)"), 515,365);
    if(keyPressed){
    if(key == 'j'|| key == 'J'){
   pantalla = 2;
   ba1= aguila;
       Ju1=0;
     }
    }   
    }
    void menu1 (){
  background (#FF5200);
  textSize(15);
  text(("Presiona e (Moctezuma)"),50,50);
  if(keyPressed){
    if(key == 'e'|| key == 'E'){
   pantalla = 3;
   ba2= moctezuma;
   Ju2=0;
 }
  
    }
    textSize(15);
    text(("Presiona d (Cuauhtemoc)"), 260, 50);
    if(keyPressed){
    if(key == 'd'|| key == 'D'){
   pantalla = 3;
      ba2=cuauhtemoc; 
Ju2=0;
}
   }
    textSize(14);
    text(("Presiona"),35,400);
    text(("l"), 55,420);
    text(("(Hernan)"),35,440);
    if(keyPressed){
    if(key == 'l'|| key == 'L')
    {
   pantalla = 3;
      ba2= hernan;
Ju2=0;
}
    }
    textSize(15);
    text("Presiona", 430, 400);
    text(("m"), 460,420);
    text(("(Malinche)"),435,440);
    if(keyPressed){
    if(key == 'm'|| key == 'M')
    {
   pantalla = 3;
      ba2=malinche;
    Ju2=0;
  }
    }
    textSize(15);
    text(("Presiona h (Aguila)"), 515, 365);
    if(keyPressed){
    if(key == 'h' || key == 'H')
    {
   pantalla = 3;
      ba2= aguila;
     Ju2=0;
   }
    }    
    }

void pelea (){
  
  background( #D1310D);
  fill(255);
  text("Jugador 1", 50, 50);
  text (" VS", 270, 50);
  text ("Jugador 2", 400, 50);
  fill ( 255);
  rect (30, 60, b, 20);
 rect (390, 60, b1, 20);
 
pushMatrix();
  if(Ju1==0){  
    translate(80,100);
  ba1.hacer();
  
}
  if(Ju1==1){ 
    translate(80, 100);
  ba1.hacer();
  }
  
 
if(Ju1==2){
 translate(80, 100);
  ba1.hacer();
  }  
  
 
  if(Ju1==3){ 
   translate(80, 100);
  ba1.hacer();
  }
  
  
  if(Ju1==4){  
    translate(80, 100);
  ba1.hacer();
  }
   popMatrix();
    
   if(Ju2==0){
     
   ba2.hacer();
   }
   
  
   if(Ju2==1){
     
   ba2.hacer();
   }
   
   if(Ju2==2){
    
   ba2.hacer();
   }
   
   if(Ju2==3){
   ba2.hacer();
   }
   
   if(Ju2==4){
   ba2.hacer();
   }
  
 switch (turno){
  
   case 0:
   keyPressed();
   if(key == 'v'|| key== 'V')
   {  
   ba1.vida -= ba2.ataque;
   V1 = ba2.vida;
   b = ba1.vida;
   turno = 1;
   }
   break;
   
   case 1:
    if(key == 'l'|| key == 'L'){
    ba2.vida -= ba1.ataque;
   V2 = ba1.vida;
   b1 = ba2.vida;
   turno = 0;
    }
    break;
    
   }
   
   if (V2 <= 0){
     pantalla = 4;
   }
   if (V1 <= 0){
     pantalla = 4;
   }
   
}

void perder(){
  background(45,89,76);
  
  if( V1 <=0){
  textSize(25);
  fill(0);
  text("GANADOR: JUGADOR 2", 160, 150);
  text("PARA VOLVER AL INICIO PRESIONA Z", 60,500);
  }
  else if(V2 <=0){
  textSize(25);
  fill(0);
  text("GANADOR: JUGADOR 1", 160,150);
  text("PARA VOLVER AL INICIO PRESIONA Z", 60,50);
  }
   keyPressed();
  if(key == 'z'|| key == 'Z'){
    if( key == ENTER){
    
    pantalla = 1;
    
  }
  
  ba1.vida = 100;
  ba2.vida = 100;
  V1= 100;
  b = ba1.vida;
  b1 = ba2.vida;
  turno =0;
    fill(255);
  pantalla = 0;
  turno = 0;
  
  
  }
  }
