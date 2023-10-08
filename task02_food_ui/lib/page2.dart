import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {

  DateTime? selectedDate; // Define a variable to hold the selected date

  bool colorchange=false;
  bool colorchange1=false;
  bool colorchange2=false;
  bool colorchange3=false;
  bool colorchange4=false;
  bool colorchange5=false;
  bool colorchange6=false;
  bool colorchange7=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: SingleChildScrollView(
scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 10),
          child: Column(
            children: [

              Text("Book a table",style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: "Preahvihear",
                color: Colors.black,
              ),
              textScaleFactor: 1.3,),

              SizedBox(height: 20,),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(


                    onTap: () async {
                      DateTime? datepicker = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2030),
                      );

                      if (datepicker != null) {
                        setState(() {
                          selectedDate = datepicker; // Store the selected date
                        });
                      }
                    },


                    child: Container(
                      child: Text("Select Date",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                  ),
                ],
              ),


              // Display the selected date if available
              if (selectedDate != null)
                Text(
                  "Selected Date: ${DateFormat("yyyy-MM-dd").format(selectedDate!)}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),



              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Time",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],

              ),
              

              SizedBox(height: 10,),

              Wrap(
                children: [
                  Text("These are the hours available provided by La Pizza e' Bella to book a table",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,

                  ),),
                  ],
              ),


              SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    InkWell(
                      onTap: ()
                      {
                        setState(() {
                          colorchange=true;
                        });

                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("13:00",


                          style: TextStyle(

                              fontSize: 20,
                              color:Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color:colorchange? Colors.black:  Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),




                    InkWell(
                      onTap: ()
                      {

                        setState(() {
                          colorchange1=true;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("13:30",


                          style: TextStyle(

                              fontSize: 20,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color:colorchange1? Colors.black:  Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),




                    InkWell(
                      onTap: ()
                      {
setState(() {
  colorchange2=true;
});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("14:00",


                          style: TextStyle(

                              fontSize: 20,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color: colorchange2? Colors.black: Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),



                    InkWell(
                      onTap: ()
                      {
setState(() {
  colorchange3=true;
});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("14:30",


                          style: TextStyle(

                              fontSize: 20,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color:colorchange3? Colors.black:  Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),


                  ],
                ),
              ),








              SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    InkWell(
                      onTap: ()
                      {
                        setState(() {
                          colorchange4=true;
                        });

                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("15:00",


                          style: TextStyle(

                              fontSize: 20,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color:colorchange4? Colors.black:  Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),




                    InkWell(
                      onTap: ()
                      {
setState(() {
  colorchange5=true;
});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("15:30",


                          style: TextStyle(

                              fontSize: 20,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color:colorchange5? Colors.black:  Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),




                    InkWell(
                      onTap: ()
                      {
setState(() {
  colorchange6=true;
});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("16:00",


                          style: TextStyle(

                              fontSize: 20,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color: colorchange6? Colors.black: Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),



                    InkWell(
                      onTap: ()
                      {
setState(() {
  colorchange7=true;
});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,

                        height: 40,

                        child: Text("16:30",


                          style: TextStyle(

                              fontSize: 20,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold

                          ),

                          textScaleFactor: 1.0,),



                        decoration: BoxDecoration(
                            color:colorchange7? Colors.black:  Colors.pinkAccent[100],

                            borderRadius: BorderRadius.circular(100)

                        ),


                      ),
                    ),


                  ],
                ),
              ),



              SizedBox(height: 30,),


              TextFormField(

                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  hintText: "How many?",
                ),

              ),



              SizedBox(height: 20,),

              TextFormField(
                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  hintText: "Add a note",
                ),

              ),



              SizedBox(height: 20,),

              ElevatedButton(
                  onPressed: ()
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Sorry not supported yet")));
                  },

                  child: Text("Book Table",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                    textScaleFactor: 1.0,
                  ),



                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                  minimumSize:MaterialStateProperty.all(Size(250, 60)),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),
                //style: TextButton.styleFrom(
                //minimumSize: Size(200, 40,),
                //),
              )



            ],
          ),
        ),
      ),
    );
  }
}
