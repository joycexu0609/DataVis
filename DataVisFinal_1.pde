PImage image1;
PImage image2;
PImage image3;
PImage image4;
PFont font, fontTitle;
//
String Title="Mobile Media Impacts on TRAVEL BEHAVIOR\n(Tap To Change The Data)";
//String["What kind of way do you request for information about yout travel plan"]
float[] multi = new float[5];
float var;
float varHeight;
int col;
color[] colarray = new color[5];
//dataset1

float[] speed = new float[5];
float[] increase= new float[5];
float[]multi2=new float[8];
int color2;
color[] colarray2=new color[8];

int choose=1;
float[]multi4=new float[10];
color[]colarray4=new color[10];
float dist=5;


color haha;

//dataset2

float a=8;
float b=8;
float c=26;
float d=26;
float e=28;
float f= 5;

float wid=0;

float[]angle3=new float[6];
float[]multi3=new float[6];
float[]sum3=new float[6];

float[]newSum3 = new float[6];
color[] colarray3=new color[6];


float angle;
PVector mouse;



void setup()
{

  font = loadFont("HelveticaNeue-Bold-150.vlw");
  smooth();
  fontTitle=loadFont("AdobeArabic-BoldItalic-48.vlw");
  textFont(font, 45);

  image1= loadImage("1.jpg");
  image2=loadImage("2.jpg");
  image3=loadImage("3.jpg");
  image4=loadImage("4.jpg");

  multi[0]=0.03;
  multi[1]=0.1;
  multi[2]=0.2;
  multi[3]=0.27;
  multi[4]=0.4;

  colarray[0] = color(130, 197, 216);
  colarray[1] = color(64, 144, 175);
  colarray[2] = color(47, 121, 166);
  colarray[3] = color(36, 81, 125);
  colarray[4] = color(10, 66, 121);
  size(1000, 1000);
  noStroke();
  //var= width/0.4-100;
  var= 2000;
  varHeight = 1000;
  multi2[0]=0.25;
  multi2[1]= 0.17;
  multi2[2]= 0.13;
  multi2[3]=0.1;
  multi2[4]=0.23;
  multi2[5]=0.08;
  multi2[7]=0.04;



  colarray2[0] = color(255, 39, 56);
  colarray2[1] = color(264, 237, 1);
  colarray2[2] = color(253, 202, 1);
  colarray2[3] = color(249, 183, 1);
  colarray2[4] = color(246, 150, 1);
  colarray2[5]= color(245, 163, 2);
  colarray2[6]= color(240, 121, 1);
  colarray2[7]= color(243, 78, 1);
  noStroke();
  smooth();
  angle3[0]=0.08;
  angle3[1]= 0.08;
  angle3[2]= 0.26;
  angle3[3]=0.26;
  angle3[4]=0.28;
  angle3[5]=0.05;

  //dataset3.Motivation
  colarray3[0] = color(236, 38, 138);
  colarray3[1] = color(249, 38, 138);
  colarray3[2] = color(185, 4, 95);
  colarray3[3] = color(185,4,100);
  colarray3[4] = color(105, 5, 55);
  colarray3[5]= color(255,71,164);

  sum3[0]=angle3[0];

  for (int i =1; i<6 ; i++) {

    sum3[i]=sum3[i-1]+angle3[i];
    //println(sum3[i]);
    // arc(width/2,height/2,500,500,multi3[i],multi3[i+1]+multi3[i]);
  }

  for (int i = 0; i<6 ; i++) {
    multi3[i] = TWO_PI*angle3[i]/sum3[5];
    //println(multi3[i]);
  }
  newSum3[0]=multi3[0];
  for (int i =1; i<6 ; i++) {

    newSum3[i]=newSum3[i-1]+multi3[i];
    //println(newSum3[i]);
    // arc(width/2,height/2,500,500,multi3[i],multi3[i+1]+multi3[i]);

    textAlign(CENTER, CENTER);

    //dataset4 user feedback
    multi4[0]=90;


    colarray4[0] = color(241, 2, 127);
    colarray4[1] = color(241, 2, 127);
    colarray4[2] = color(241, 2, 127);
    colarray4[3] = color(241, 2, 127);
    colarray4[4] = color(241, 2, 127);
    colarray4[5]= color(241, 2, 127);
    colarray4[6]= color(241, 2, 127);
    colarray4[7]= color(241, 2, 127);
    colarray4[8]= color(241, 2, 127);
  }
}



void draw() {

  haha=get(mouseX, mouseY);
  // println(haha);


  background(253, 233, 208);
  switch(choose) {
  case 1:
    image(image1, 0, 0);
    break;
  case 2:
    image(image2, 0, 0);
    break;
  case 3:
    image(image3, 0, 0);
    break;
  case 4:
    image(image4, 0, 0);
    break;
  }
  //TITLE!
  smooth();
  textFont(fontTitle, 19);
  //textAlign(LEFT, CENTER);
  fill(255);
  text(Title, 500, 800);

  //What kind of way do you request for information about yout travel plan ?
  if (choose==1) {
    //image(image, 0, 0);

    rectMode(CENTER);
    for (int i=4; i>-1; i--) {
      //    if(i==4 || i==0 || i==2)
      //    {
      //      fill(255,55,68);
      //    }
      //   else{
      //     fill(106,187,178);
      //   }
      fill(colarray[i]);
      rect(width/2, increase[i]/2, var*multi[i], increase[i]);
      if (increase[i] > varHeight*multi[i]) {
        speed[i]=0;
      }
      else {
        speed[i] =  var*multi[i]/50;
      }
      increase[i] = increase[i] +speed[i];
      fill(253, 233, 208);
      //rect(0, 0, width*2, 40);
      //
      //println(speed[i]);
    }
  }
  //dataset2
  else if (choose ==2) {
    stroke(240);
    fill(0);
    line(0, width/2, 1000, width/2);

    noStroke();
    ellipseMode(CORNER);

    wid=10;


    for (int i=0;i<7;i++) {

      if (i==0) {
        fill(colarray2[i]);

        ellipse( 10, height/2- multi2[i]*900/2, multi2[i]*900, multi2[i]*900);
      }
      else {
        fill(colarray2[i]);
        wid+=multi2[i-1]*900+10;
        ellipse( wid, height/2- multi2[i]*900/2, multi2[i]*900, multi2[i]*900);
      }
    }
  }

  //dataset3


  else if (choose ==3) {
   
stroke(255);
strokeWeight(0.1);
    ellipseMode(CENTER);
    for (int i =1; i<6 ; i++) {
      fill( colarray3[i]);
      arc(width/2, height/2, 500, 500, newSum3[i-1], newSum3[i], PIE);
    }
    fill( colarray3[0]);
    arc(width/2, height/2, 500, 500, 0, newSum3[0], PIE);




    for (int i=0;i<6;i++) {

      if (haha== colarray3[i]) {
        textFont(font, 40);
        fill(255);
        text(sentence3[i], width/2, height/2-400);
      }
    }
  }

  //dataset user feedback
  else if (choose==4) {
    noStroke();
    for (int i=0;i<9;i++) {
      fill(255); 
      rect((width-(9*dist+multi4[0]*9+dist*(9+1)))/2+ i*dist+multi4[0]*i+dist*(i+1) + 50, height/2, multi4[0], multi4[0]);
    }

    if (mouseY>height/2 && mouseY<height/2+multi4[0] ) {

      for (int i=0;i<9;i++) {
        if (mouseX >(width-(9*dist+multi4[0]*9+dist*(9+1)))/2+ i*dist+multi4[0]*i+dist*(i+1) && 
          mouseX <(width-(9*dist+multi4[0]*9+dist*(9+1)))/2+ i*dist+multi4[0]*i+dist*(i+1)+multi4[0]) {
          fill(colarray4[i]);
          rect((width-(9*dist+multi4[0]*9+dist*(9+1)))/2+ i*dist+multi4[0]*i+dist*(i+1) + 50, height/2, multi4[0], multi4[0]);

          if (i==1) {
            textFont(font, 20);
            fill(0, 102, 153);

            text("social media helps me a lot for my travelling,\n I basically did all the research or asked friends through it\n and I got better travelling experiences through the help of social media.", width/2, height/2-multi4[0]-40);
            //    text("the research or asked friends through it and I got better travelling experiences through the help of social media.", width/2, height/2-multi4[0]-40);
            //
          }
          else if (i==0) {
            textFont(font, 20);
              fill(0, 102, 153);
            text("More relevant digital content are more helpful for me.\n For example: the content shared by my friends", width/2, height/2-multi4[0]-20);
          }      

          else if (i==2) {
            textFont(font, 20);
            fill(0, 102, 153);
            text("It's good for sharing moments when you are away traveling", width/2, height/2-multi4[0]-40);
          } 
          else if (i==3) {
            textFont(font, 20);
            fill(0, 102, 153);
            text("It definitely helps to see where people and how it looks like", width/2, height/2-multi4[0]-40);
          } 
          else if (i==4) {
            textFont(font, 20);
            fill(0, 102, 153);

            text("For me, it doesn't. I still travel in my way.", width/2, height/2-multi4[0]-40);
          }
          else if (i==5) {
            textFont(font, 20);  
            fill(0, 102, 153);
            text("Traveling without the Internet is much more difficult. \n I often use social media to find out who's been where and meet up with them in other countries..", width/2, height/2-multi4[0]-40);
          }
          else if (i==6) {
            textFont(font, 20);
            fill(0, 102, 153);
      
            text("Social media helps me to avoid embarrassing moments \n (eg. out of common topics during talking) with my travel companies.", width/2, height/2-multi4[0]-40);
          }

          else if (i==7) {
            textFont(font, 20);
            fill(0, 102, 153);
            text("It does in that way but also makes the world smaller, \n  because you get to see other people  and their experiences through the web.\n It is important though, to still perform face-to-face activities in life, and it is not replaceable.\n maybe no i just care about functionality", width/2, height/2-multi4[0]-60);
          }

          else if (i==8) {
            textFont(font, 20);
            fill(0, 102, 153);
            text("I often use social media to find out who's been where\n and meet up with them in other countries. ", width/2, height/2-multi4[0]-40);
          }
          else if (i==9) {
            textFont(font, 20);
                 fill(0, 102, 153);
            text("It does in that way but also makes the world smaller, \n because you get to see other people and their experiences through the web.\n It is important though, to still perform face-to-face activities in life, and it is not replaceable. maybe no i just care about functionality", width/2, height/2-multi4[0]-40);
          }
        }
      }
    }
  }

  // text display in Situation 1
  if (choose==1) {
    //image(image, 0, 0);
    for (int i=0;i<5;i++) {
      if (i==0  &&  mouseX>width/2- varHeight*multi[i] && mouseX<width/2+varHeight*multi[i] && mouseY>0 && mouseY<varHeight*multi[i]) {
        fill(254, 3, 133);
        textFont(font, 40);
        text(sentence[0], width/2, height/2+50);
      }
      else if (i != 0) {
        if ((mouseX>width/2- varHeight*multi[i] && mouseX<width/2+varHeight*multi[i] && mouseY>0 && mouseY<varHeight*multi[i])) {
          if (!(mouseX>=width/2- varHeight*multi[i-1] && mouseX<=width/2+varHeight*multi[i-1] && mouseY > 0 && mouseY<=varHeight*multi[i-1])) {
            fill(254, 3, 133);
            textFont(font, 40);
            text(sentence[i], width/2, height/2+50);
          }
        }
      }
    }
  }

  // text in situation 2
  if (choose==2) {


    float[] wid= new float[7];

    for (int i=0;i<7;i++) {
      if (i==0) {
        wid[i]=10+multi2[i]*900/2;
      }
      else {
        wid[i]=wid[i-1]+10+multi2[i-1]*900/2+multi2[i]*900/2;
      }
    }

    for (int i=0;i<7;i++) {

      fill(236, 84, 1);

      if (dist(wid[i], height/2, mouseX, mouseY)<multi2[i]*900/2) {
        textFont(font, 40);
        text(sentence2[i], width/2, height/2-250);
      }
    }


    //fill(255);
    //text(sentence2[i],width/2,height/2};
  }
}




String sentence[] = {
  "3%-Advertisement by travel company", 
  "10%-other", 
  "20%-Travel guiding books(lonely planet)", 
  "27%-Shared experience by other \ntraveler on social media ", 
  "40%-Word of mouth \n suggestions from  friends and family "
};

String sentence2[] = {
  "25%-Researching travel", 
  "17%-Finding travel deals/promotion", 
  "13%-Making hotel reservation ", 
  "10%-Schedule your timetable", 
  "23%-Creating picture & video \n sharing with your friends", 
  "8%-Visiting a travel related \n social media company page ", 
  "4%-Other",
};

String sentence3[]= {

  "8%-Define yourself with other ", 
  "8%-Helping other through \n sharing content (eg: writing review)", 
  "26%-Grow and nourish relationship \n with your friend on social media ", 
  "26%-Self-fullfillment", 
  "28%-Save your travel memory", 
  "5%-Other",
};

void keyReleased() {

  if (choose>3) {
    choose=1;
  }
  else {
    choose++;
  }
}

