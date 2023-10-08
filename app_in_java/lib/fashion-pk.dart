import 'package:app_in_java/drawer.dart';
import 'package:app_in_java/home-page-2.dart';
import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';




class FashionPk extends StatefulWidget {
  const FashionPk({super.key});


  @override
  State<FashionPk> createState() => _FashionPkState();
}

class _FashionPkState extends State<FashionPk> {

  var myopacity=1.0;
  bool flag=true;
  Color mycolor=Colors.black;


  int currentIndex=0;

  final PageController controller=PageController();

  List images=[
    // "https://xcdn.next.co.uk/COMMON/Items/Default/Default/ItemImages/AltItemShot/C99478s.jpg",
    //"https://xcdn.next.co.uk/COMMON/Items/Default/Default/ItemImages/AltItemShot/C99478s.jpg",
    "assets/images/image8.jpg",
    "assets/images/image1.jpg",
    "assets/images/image4.jpg",
    "assets/images/image6.jpg",
    "assets/images/perfume.jpeg",
    "assets/images/shopping1.jpg",


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(
          child: Text("Fashion.PK",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: " Preahvihear",
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),),
        ),



      ),




      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:   Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Column(

            children: [

              SizedBox(

                height: 230,

                width:double.infinity,

                child: PageView.builder(

                    controller: controller,

                    onPageChanged: (index)

                    {

                      setState(() {

                        currentIndex=index % images.length;


                      });

                    },

                    //itemCount: images.length,

                    itemBuilder: (context,index)

                    {

                      return SizedBox(

                        height: 230,

                        width: double.infinity,

                        child: Image.asset(images[index % images.length],

                          fit: BoxFit.cover,),

                      );


                    }

                ),

              ),







              SizedBox(height: 10,),



              Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  for(var i=0; i<images.length; i++) buildIndicator(currentIndex ==i)

                ],


              ),



              //code for arrows

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  IconButton(onPressed: ()

                  {

                    controller.jumpToPage(currentIndex - 1);

                  },

                    icon: Icon(Icons.arrow_back),

                  ),



                  IconButton(onPressed: ()

                  {

                    controller.jumpToPage(currentIndex + 1);

                  },

                    icon: Icon(Icons.arrow_forward),

                  ),


                ],

              ),




Column(
  children: [

    AnimatedOpacity(
        opacity: myopacity,
        duration:Duration(seconds: 2),
      child: InkWell(
        onTap: ()
          {
            setState(() {
              if(flag) {
                myopacity = 0.0;
                mycolor=Colors.red;
                flag = false;
              }
              else{
                myopacity=1.0;
                flag=true;
                mycolor=Colors.black;
              }
            });


          },
          child: Text("Shop For",
            style: TextStyle(

              fontSize: 35,

              fontWeight: FontWeight.bold,

              fontFamily: " Preahvihear",

              color:mycolor,

              fontStyle: FontStyle.italic,

            ),


          )),
    ),
  ],
),


              SizedBox(height: 10,),






              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    Container(

                      width: 115,

                      height: 100,



                      child: CircleAvatar(

                        backgroundImage: AssetImage("assets/images/shopping1.jpg"),

                        radius: 200,

                      ),

                    ),



                    SizedBox(width: 10,),



                    Container(

                      width: 115,

                      height: 100,



                      child: CircleAvatar(

                        backgroundImage: AssetImage("assets/images/shopping_bags.jpg"),

                        //radius: 100,

                      ),

                    ),



                    SizedBox(width: 10,),



                    Container(

                      width: 115,

                      height: 100,



                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/shopping2.jpg"),

                        //radius: 100,

                      ),

                    ),



                  ],

                ),
              ),





              Padding(

                padding: const EdgeInsets.only(top: 20.0),

                child: SingleChildScrollView(

                  scrollDirection: Axis.horizontal,

                  child: Row(

                    children: [

                      InkWell(

                        onTap: ()

                        {

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                        },



                        child:ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(10)),

                          child: Image.asset("assets/images/sneakers2.jpeg",
                          width: 160,
                          height: 300,
                            fit: BoxFit.cover,),
                        ),

                      ),





                      SizedBox(width: 10,),



                      InkWell(



                        onTap: ()

                        {

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage2()));

                        },





                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(10)),

                          child: Image.asset("assets/images/perfume.jpeg",
                            width: 160,
                            height: 300,
                            fit: BoxFit.cover,),
                        ),




                      ),



                    ],

                  ),



                ),

              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Sneakers",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 70,) ,

                    Text("Fragrances",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),


            ],



          ),
        ),
      ),






      drawer: Mydrawer(),

    );


  }



  //function create for carousel slider
  Widget buildIndicator(bool isSelected)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12:8,
        width: isSelected ? 12:8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black: Colors.grey,
        ),
      ),
    );

  }
}
