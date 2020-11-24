class Face{
  //Definimos con un arreglo de vectores
  PVector[] vert= new PVector [3]; //3 vertices
  
  //Se especifican los vectores que conforman cada vertices que conforma cada cara
  Face(PVector v0, PVector v1, PVector v2){ //constructor, vertice 0,1,2
   //Definimos los vertices
    vert[0] = v0; 
    vert[1] = v1;
    vert[2] = v2;
    }
    //Dibujar la cara
    //Crear la figura con cierta cantidad de caras
    void display(){
      beginShape();
      //Dibujamos con un siclo
      for (int i=0; i<3; i++) //comenzamos con cero hasta llegar a 3 
        vertex(vert[i].x, vert[i].y, vert[i].z); // se sustituye el numero con i pra que dubuje los vertictices hasta llegar a 3
       endShape();
       }
     
  }
