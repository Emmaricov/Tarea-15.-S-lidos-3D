PImage Fondo1;   
Tetraedro t;
Octaedro  o;
Icosaedro i;

void setup(){
  size(800,700, P3D);
  Fondo1 = loadImage("fondo1.jpg"); 
  noStroke();
  t = new Tetraedro(200);
  o = new Octaedro(180);
  i = new Icosaedro(180);
 }
  
 void draw(){
   image(Fondo1,0,0);
   lights();
    
 //TETRAEDRO      
     if(mouseX > 125-50 && mouseX <125+50  && mouseY >350-50 && mouseY <350+50) { 
        fill(255,191,224,150);
        circle(125,height/2,100); 
        
      if(mousePressed==false){
         pushMatrix();
            ambientLight(0,0,255);
            fill(random(165,198),random(248,254),random(206,197),160);
             translate(width/2, height/2);
             rotateX(frameCount*PI/275);
             rotateY(frameCount*PI/175);
             t.display();  
         popMatrix();
       }
     }
      
 //OCTAEDRO      
     if(mouseX > 400-50 && mouseX <400+50  && mouseY >600-50 && mouseY <600+50) { 
        fill(169,255,255,150);
        circle(width/2,600,100);
       
      if(mousePressed==false){
          pushMatrix();
             ambientLight(255,0,0);
             fill(random(254,254),random(167,215),random(167,167),180);
             translate(width/2, height/2);
             rotateX(frameCount*PI/275);
             rotateY(frameCount*PI/175);
             o.display();
           popMatrix();    
          }
        }
   
 //ICOSAEDRO      
     if(mouseX > 646-50 && mouseX <646+50  && mouseY >350-50 && mouseY <350+50) { 
        fill(253,210,143,150);
        circle(646,height/2,100); 
       
      if(mousePressed==false){
          pushMatrix();
             ambientLight(0,255,0);
             fill(random(197,248),random(248,248),random(165,165),180);
             translate(width/2, height/2);
             rotateX(frameCount*PI/275);
             rotateY(frameCount*PI/175);
             i.display();
           popMatrix();  
       }
      }   
  }
   
 
