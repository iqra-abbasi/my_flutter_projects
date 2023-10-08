//import 'dart:js_interop';

import 'package:app_in_java/fashion-pk.dart';
import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/login.dart';
import 'package:app_in_java/welcome-page-with-name.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()
{
  runApp(SignUp());
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool  passVisibility=false;



  String radioval="male";

  var emailText=TextEditingController();
  var passwordText=TextEditingController();
  var nameText=TextEditingController();
  var phoneText=TextEditingController();
  var genderText=TextEditingController();
  var dateText=TextEditingController();


  bool changebutton=false;


  //key for form
  final _formKey=GlobalKey<FormState>();

  //method
  moveToNext(BuildContext context) async
  {

    String uemail=emailText.text.toString();
    String uname=nameText.text;
    String uphone=phoneText.text;
    String upassword=passwordText.text;
    String ugender=genderText.text.toString();


    //to set value for shared preferences
    var pref= await SharedPreferences.getInstance();

    pref.setBool("sign",true);



    if(_formKey.currentState!.validate())
    {
      setState(()
      {
        changebutton=true;

      });

      await Future.delayed(Duration(seconds: 1));
      Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomePage(nameText.text.toString())));

      setState(() {
        changebutton=false;
      });
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],


      appBar: AppBar(
        title: Center(child: Text("Sign Up!")),
      backgroundColor: Colors.teal[800],
      ),


      body: Container(
        height: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.teal.shade100,
                Colors.blue.shade50,
                // Color(0xffaccbee),
                //Color(0xffe7f0fd),
              ]
          ),
        ),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Form(

            key: _formKey,

            child: Column(
              children: [


                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 380,
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/signup2.png",
                        ),
                        radius: 100,

                      ),
                    ),
                  ),
                ),

               /* Image.asset("assets/images/sign.png",
                  fit: BoxFit.cover,
                  //width: 600,
                  //height: 300,
                ),

                */

                SizedBox(
                  height: 5,
                ),


                RichText(
                  text: TextSpan(
                      children: <TextSpan>[

                        TextSpan(text: "Sign",
                          style: TextStyle(
                            fontFamily: "Preahvihear",
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.teal[700],

                          ),

                        ),

                        TextSpan(
                          text: "Up",
                          style: TextStyle(
                            fontFamily: "Preahvihear",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.teal[700],

                          ),


                        )
                      ]
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 32.0),
                  child: Column(
                    children: [

                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: TextFormField(

                          controller: emailText,
                          //enabled: false,
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.email],

                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.pinkAccent,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.white54,
                                width: 2,
                              ),
                            ),
                            //prefixText: "Email",
                            prefixIcon: Icon(Icons.email,
                              color: Colors.teal[800],),



                           // labelText: "Email",
                            hintText: "Email",


                          ),

                          //for validation

                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "email required";
                            }

                            if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')) {
                              return 'Invalid Email';
                            }
                            return null;
                          },


                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),


                      Container(

                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: TextFormField(
                          controller: nameText,
                          keyboardType: TextInputType.text,

                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.pinkAccent,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.white54,
                                width: 2,
                              ),
                            ),
                            //prefixText: "Email",
                            prefixIcon: Icon(Icons.supervised_user_circle,
                              color: Colors.teal[800],),


                           // labelText: "UserName",

                            hintText: "UserName",

                          ),

                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "username required";
                            }
                            return null;
                          },

                        ),
                      ),


                      SizedBox(
                        height: 20,
                      ),


                      Container(

                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: TextFormField(
                          controller: phoneText,

                          keyboardType: TextInputType.phone,

                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.pinkAccent,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.white54,
                                width: 2,
                              ),
                            ),
                            //prefixText: "Email",
                            prefixIcon: Icon(Icons.phone,
                              color: Colors.teal[800],),


                           // labelText: "PhoneNumber",

                            hintText: "PhoneNumber",

                          ),


                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "phoneNumber required";
                            }

                            if(value.length<11 || value.length>11 ) {
                              return "Please enter a valid PhoneNumber";
                            }

                            return null;
                          },

                        ),
                      ),


                      SizedBox(
                        height: 20,
                      ),


                      Container(

                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: TextFormField(
                          controller: passwordText,

                          //keyboardType: TextInputType.number,
                          obscureText:  passVisibility,
                          obscuringCharacter: "*",
                          autofillHints: [AutofillHints.password],

                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.pinkAccent,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.white54,
                                width: 2,
                              ),
                            ),
                            //prefixText: "Email",
                            //prefixIcon: Icon(Icons.key,
                              //color: Colors.black,),

                            prefixIcon: IconButton(
                              onPressed: ()
                              {
                                setState(() {
                                  passVisibility=!passVisibility;
                                });
                              },
                              icon: passVisibility? Icon(Icons.visibility_off,color: Colors.black,) :
                              Icon(Icons.visibility,color: Colors.teal[800],),
                            ),



                           // labelText: "Password",

                            hintText: "Password",

                          ),



                         /* validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "please enter your password";
                            }
                            else if(value.length<6)
                            {
                              return "password must be atleast 6 digits";
                            }


                            return null;
                          },

                          */
                          validator: (PassCurrentValue){
                            RegExp regex=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                            var passNonNullValue=PassCurrentValue??"";
                            if(passNonNullValue.isEmpty){
                              return ("Password  required");
                            }
                            else if(passNonNullValue.length<6){
                              return ("Password Must be more than 5 characters");
                            }
                            else if(!regex.hasMatch(passNonNullValue)){
                              return ("Password should contain upper,lower,digit and Special character ");
                            }
                            return null;
                          },


                        ),
                      ),


                      SizedBox(
                        height: 20,
                      ),






                      Container(

                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: TextFormField(
                          controller: dateText,


                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.pinkAccent,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.white54,
                                width: 2,
                              ),
                            ),

                            prefixIcon: Icon(Icons.calendar_today_rounded,
                            color: Colors.teal[800],),


                            labelText: " DateOfBirth",

                            hintText:"Optional",

                          ),


                           onTap: ()async
                          {
                            DateTime? datepicker= await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2030),
                            );

                            if(datepicker!=null)
                              {
                                setState(() {
                                  dateText.text=DateFormat("yyyy-MM-dd").format(datepicker);

                                });
                              }

                          },

                           /* validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "DateOfBirth required";
                            }
                            return null;
                          },

                            */



                        ),
                      ),






SizedBox(height: 20,),




                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Select Gender",
                                style: TextStyle(
                                  fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                  color: Colors.teal[700],
                                ),),
                        ],
                      ),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.start,

    children: [

        Text("male",

          style: TextStyle(

            fontSize: 20,

            fontWeight: FontWeight.bold,

            color: Colors.teal[700],

          ),

        ),



        Radio(

          activeColor: Colors.teal[800],

          value: "male",

          groupValue: radioval,

          onChanged: (value)

          {

            setState(() {

              radioval=value.toString();

            });



          },),





  SizedBox(width: 20,),





                            Text("female",

                              style: TextStyle(

                                fontSize: 20,

                                fontWeight: FontWeight.bold,

                                color: Colors.teal[700],

                              ),

                            ),



                            Radio(

                              activeColor: Colors.teal[800],

                              value: "female",

                              groupValue:radioval,

                              onChanged: (value)

                              {

                                setState(() {

                                  radioval=value.toString();

                                });

                              },),



    ],

  ),
),

                    ],
                  ),
                ),



//container and inkwell
                InkWell(
                  onTap: () => moveToNext(context),




                  child: AnimatedContainer(
                    curve: Curves.slowMiddle,

                    duration: Duration(seconds: 2),

                    alignment: Alignment.center,
                    width: changebutton ? 5 : 300,
                    height: 50,
                    child: changebutton ?
                    Icon(Icons.done ,
                      color: Colors.white,) :Text("Sign Up",
                      style: TextStyle(
                        fontFamily: "Preahvihear",
                        fontSize:changebutton ? 0: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),),

                    decoration: BoxDecoration(
                     // shape:changebutton ?  BoxShape.circle:BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                          changebutton ? 30 : 30),
                      color:changebutton ? Colors.teal[300]: Colors.teal[700],
                      //borderRadius: BorderRadius.circular(
                      // changebutton ? 10 : 30),

                    ),

                  ),
                ),


                SizedBox(
                  height: 20,
                ),

                ElevatedButton(

                  child: Text("GO BACK!",
                    style: TextStyle(
                      fontFamily: "Preahvihear",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor:Colors.white,
                    ),),


                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal[700]),
                  minimumSize:MaterialStateProperty.all(Size(200, 50)),
                    shape: MaterialStateProperty.all(StadiumBorder()),
                  ),
                  //style: TextButton.styleFrom(
                    //minimumSize: Size(200, 40,),
                  //),

                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage()));
                  },


                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
