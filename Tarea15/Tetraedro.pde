class Tetraedro{
  
  //ponemos los vertices 
  //Con centro en el origen de radio 1
  PVector[] verts = {
 
    new PVector(0,0,1), //P0
    new PVector(.943,0,-.333),//P1
    new PVector(-.471,-.816,-.333),//P2
    new PVector(-.471,.816,-.333), //P3
     };
    
    float r; //definimos un radio para escalar el tetaedro 
    
    //Definimos nuestro arreglo de tulpas, que cara se une con cual
    Tupla [] tupla = { //indices
      new Tupla(0,1,3), //tupla 0
      new Tupla(0,3,2), //tupla 1
      new Tupla(0,2,1), //tupla 2
      new Tupla(1,2,3) //tupla 3
      };
    
     //Vamos con las caras
     //creamos un arreglo de caras
     Face[] faces = new Face[4];
     
     //Creamos el constructor
     Tetraedro( float r){//Definimos su tamaño, su radio
      this.r = r; //lo guardamos en el radio de la instancia
      //
      for(int i = 0; i < 4; i++){
        //inicializamos las caras. Llamamos al primer indice(el primer numero de la tupla i) y ese numero corresponde al primer vertice, osea 0
        faces [i] = new Face(verts [tupla[i].num0], verts [tupla[i].num1], verts [tupla[i].num2]);
        }
      }
      
    void display(){
      pushMatrix();
        scale(r); //Cambiamos la escala de las coordenadas
        for(int i=0; i<4; i++){
          faces[i].display();//mandamos dibujar cada una de las caras
        }
        popMatrix();
       }
 }
