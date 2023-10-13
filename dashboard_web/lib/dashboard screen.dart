import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'files info.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        // padding: EdgeInsets.all(defaultPadding),
        scrollDirection: Axis.vertical,

        child: Column(

          children: [

            SingleChildScrollView(
              child: Row(
                children: [
                  Text("Dashboard",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: " Preahvihear",
                    ),),
Spacer(),




                  Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,

                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                            labelText: "Serach",

                            suffixIcon: InkWell(

                              onTap: ()
                              {

                              },

                              child: Container(
                                padding: EdgeInsets.all(0.75),
                                margin: EdgeInsets.symmetric(horizontal: 0.75),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blue,
                                ),
                                child: Icon(Icons.search),
                              ),
                            )
                        ),
                      )),






                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white10),
                      ),

                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                                height: 30,
                                image:AssetImage("assets/images/person.png",)),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("iqra",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_down,
                              color: Colors.black,),
                          ),


                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),










            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,

                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Files",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: ' Preahvihear',
                          ),),

                          ElevatedButton.icon(

                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.blue),
                                //minimumSize:MaterialStateProperty.all(Size(200, 50)),
                               // shape: MaterialStateProperty.all(StadiumBorder()),

                              ),
                              onPressed: ()
                              {},
                              icon: Icon(Icons.add,),
                              label: Text("Add New")),

                        ],
                      ),





                      SizedBox(height: 10,),

                      Row(
                        children: [

                          Container(
                            width: 180,
                            height:150 ,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.document_scanner_rounded,color: Colors.blue,),
                                      Icon(Icons.more_vert,color: Colors.black,)
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Documents",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ),

                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        height: 5,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("1327files"),
                                      Text("19GB"),

                                    ],
                                  ),
                                )

                              ],
                            ),

                          ),


SizedBox(width: 10,),

                          Container(
                            width: 180,
                            height:150 ,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.drive_file_move_rtl_rounded,color: Colors.yellow,),
                                      Icon(Icons.more_vert,color: Colors.black,)
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Google drive",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ],
                                  ),
                                ),

                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        height: 5,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("1127files"),
                                      Text("1.3GB"),

                                    ],
                                  ),
                                ),


                              ],
                            ),

                          ),



                          SizedBox(width: 10,),

                          Container(
                            width: 180,
                            height:150 ,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.drive_file_move,color: Colors.white,),
                                      Icon(Icons.more_vert,color: Colors.black,)
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("One drive",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ],
                                  ),
                                ),

                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        height: 5,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("1427files"),
                                      Text("1.2GB"),

                                    ],
                                  ),
                                ),


                              ],
                            ),

                          ),



                          SizedBox(width: 10,),

                          Container(
                            width: 180,
                            height:150 ,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.document_scanner_rounded,color: Colors.blue,),
                                      Icon(Icons.more_vert,color: Colors.black,)
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Documents",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ],
                                  ),
                                ),

                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        height: 5,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("1427files"),
                                      Text("1.2GB"),

                                    ],
                                  ),
                                ),


                              ],
                            ),

                          ),



                        ],
                      ),

SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Recent Files",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: ' Preahvihear',
                          ),),
                        ],
                      ),
SizedBox(height: 10,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(" Files Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: ' Preahvihear',
                                ),),

                              Text(" Date",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: ' Preahvihear',
                                ),),

                              Text(" size",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: ' Preahvihear',
                                ),),
                            ],
                          ),


                          SizedBox(height: 15,),


                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy,color: Colors.pink,),
                                Text("01-03-2023"),
                                Text("3.5mb"),
                              ],
                            ),
                          ),
SizedBox(height: 6,),

                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy,color: Colors.orangeAccent,),
                                Text("10-03-2023"),
                                Text("3.2mb"),
                              ],
                            ),
                          ),


                          SizedBox(height: 6,),

                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy,color: Colors.blue,),
                                Text("10-04-2023"),
                                Text("3.5mb"),
                              ],
                            ),
                          ),

                          SizedBox(height: 6,),

                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy,color: Colors.red,),
                                Text("09-06-2023"),
                                Text("3.0mb"),
                              ],
                            ),
                          )





                        ],
                      ),





]),

                ),










                      SizedBox(width: 10,),




                Expanded(
                    flex: 2,
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Storage Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: ' Preahvihear',
                            ),),
                          ),


                          SizedBox(height: 200,
                          child:Stack(
                            children: [
                              PieChart(
                                  PieChartData (

                                startDegreeOffset: -90,
                                sectionsSpace: 0,
                                centerSpaceRadius: 70,
                               // centerSpaceColor: Colors.orange,
                                sections: [
                                  PieChartSectionData(
                                  value: 25,
                                  showTitle: false,
                                  color: Colors.blue,
                                  radius: 25,
                                ),


                                  PieChartSectionData(
                                      value: 20,
                                      showTitle: false,
                                      color: Color(0xff26E5FF),
                                      radius: 22
                                  ),


                                  PieChartSectionData(
                                      value: 10,
                                      showTitle: false,
                                      color: Color(0xffFFCF26),
                                      radius: 19
                                  ),


                                  PieChartSectionData(
                                      value: 5,
                                      showTitle: false,
                                      color: Colors.grey,
                                      radius: 16
                                  ),


                                  PieChartSectionData(
                                      value: 5,
                                      showTitle: false,
                                      color: Colors.red,
                                      radius: 13
                                  ),
                                ],



                              )),

                              Positioned.fill(child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("29.1",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),),

                                Text("of 128GB"),
                              ],
                              )),

                            ],
                          ),

                          ),







                          Container(
                            margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                            padding: EdgeInsets.only(right: 10,left: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                            child: Row(
                              children: [
                                SizedBox(height: 20,
                                width: 20,
                                child: Icon(Icons.file_copy_sharp,color: Colors.black,),),
                                Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                      Text("documents Files",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,),

                                      Text("1329 Files",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),)
                                  ],
                                ),
                                    )),
                                Text("1.3GB"),
                              ],
                            ),
                          ),




                          Container(
                            margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                            padding: EdgeInsets.only(right: 10,left: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                            child: Row(
                              children: [
                                SizedBox(height: 20,
                                  width: 20,
                                  child: Icon(Icons.perm_media,color: Colors.blue,),),
                                Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("media  Files",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontWeight: FontWeight.bold),),

                                          Text("1329 Files",
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),)
                                        ],
                                      ),
                                    )),
                                Text("15.2GB"),
                              ],
                            ),
                          ),



                          Container(
                            margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                            padding: EdgeInsets.only(right: 10,left: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                            child: Row(
                              children: [
                                SizedBox(height: 20,
                                  width: 20,
                                  child: Icon(Icons.file_copy,color: Colors.yellow,),),
                                Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("other  Files",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontWeight: FontWeight.bold),),

                                          Text("1329 Files",
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),)
                                        ],
                                      ),
                                    )),
                                Text("1.2GB"),
                              ],
                            ),
                          ),



                          Container(
                            margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                            padding: EdgeInsets.only(right: 10,left: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                            child: Row(
                              children: [
                                SizedBox(height: 20,
                                  width: 20,
                                  child: Icon(Icons.file_copy_outlined,color: Colors.red,),),
                                Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("unknowns",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontWeight: FontWeight.bold),),

                                          Text("1329 Files",
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),)
                                        ],
                                      ),
                                    )),
                                Text("1.0GB"),
                              ],
                            ),
                          ),











                        ],
                      ),


                    )),


              ],
            ),



        ],),
      ),
    );
  }
}
