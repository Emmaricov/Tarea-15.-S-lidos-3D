class Icosaedro{
  
  //ponemos los vertices 
  //Con centro en el origen de radio 1
  PVector[] verts = {
    
    new PVector(0,0,1),               //P0
    new PVector(0.894,0,0.447),       //P1
    new PVector(0.276,0.851,0.447),   //P2
    new PVector(-0.724,0.526,0.447),  //P3
    new PVector(-0.724,-0.526,0.447), //P4
    new PVector(0.276,-0.851,0.447),  //P5
    new PVector(0.724,0.526,-0.447),  //P6
    new PVector(-0.276,0.851,-0.447), //P7
    new PVector(-0.894,0,-0.447),     //P8
    new PVector(-0.276,-0.851,-0.447),//P9
    new PVector(0.724,-0.526,-0.447), //P10
    new PVector(0,0,-1),              //P11
     };
    
    float r; //definimos un radio para escalar 
    
    //Definimos nuestro arreglo de tulpas, que cara se une con cual
    Tupla [] tupla = { //indices
      new Tupla(0,1,2),   //tupla 0
      new Tupla(0,2,3),   //tupla 1
      new Tupla(0,3,4),   //tupla 2
      new Tupla(0,4,5),   //tupla 3
      new Tupla(0,5,1),   //tupla 4
      new Tupla(11,6,7),  //tupla 5
      new Tupla(11,7,8),  //tupla 6
      new Tupla(11,8,9),  //tupla 7
      new Tupla(11,9,10), //tupla 8
      new Tupla(11,10,6), //tupla 9
      new Tupla(1,2,6),   //tupla 10
      new Tupla(2,3,7),   //tupla 11
      new Tupla(3,4,8),   //tupla 12
      new Tupla(4,5,9),   //tupla 13
      new Tupla(5,1,10),  //tupla 14
      new Tupla(6,7,2),   //tupla 15
      new Tupla(7,8,3),   //tupla 16
      new Tupla(8,9,4),   //tupla 17
      new Tupla(9,10,5),  //tupla 18
      new Tupla(10,6,1),  //tupla 19
      };
    
     //Vamos con las caras
     //creamos un arreglo de caras
     Face[] faces = new Face[20];
     
     //Creamos el constructor
     Icosaedro( float r){//Definimos su tamaño, su radio
      this.r = r; //lo guardamos en el radio de la instancia
      //
      for(int i = 0; i < 20; i++){
        //inicializamos las caras. Llamamos al primer indice(el primer numero de la tupla i) y ese numero corresponde al primer vertice, osea 0
        faces [i] = new Face(verts [tupla[i].num0], verts [tupla[i].num1], verts [tupla[i].num2]);
        }
      }
      
    void display(){
      pushMatrix();
        scale(r); //Cambiamos la escala de las coordenadas
        for(int i=0; i<20; i++){
          faces[i].display();//mandamos dibujar cada una de las caras
        }
        popMatrix();
       }
 }
