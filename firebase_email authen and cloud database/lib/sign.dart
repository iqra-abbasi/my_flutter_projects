import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentification/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {

  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {



  var emailText=TextEditingController();
  var passwordText=TextEditingController();
  var nameText=TextEditingController();
  var phoneText=TextEditingController();
  var genderText=TextEditingController();
  var dateText=TextEditingController();


  bool  passVisibility=false;
  bool changebutton=false;

  var radioval="male";

  //key for form
  final _formKey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {



    return Scaffold(

      appBar: AppBar(

        title: Center(child: Text("SignUp")),

      ),


      body: Container(
        height: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                //Colors.teal.shade100,
                //Colors.blue.shade50,
                Color(0xfffbc8d4),
                Color(0xff9795f0),

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
                    padding: const EdgeInsets.only(top: 0.0),
                    child:  Container(
                        width: 500,
                        height: 200,

                        child: Image.asset("assets/images/sign.png",
                        fit: BoxFit.fill,)),



                  ),
                ),


                SizedBox(
                  height: 10,
                ),


                RichText(
                  text: TextSpan(
                      children: <TextSpan>[

                        TextSpan(text: "Sign",
                          style: TextStyle(
                            fontFamily: "Preahvihear",
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.purple,

                          ),

                        ),

                        TextSpan(
                          text: "Up",
                          style: TextStyle(
                            fontFamily: "Preahvihear",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.purple,

                          ),


                        )
                      ]
                  ),
                ),

SizedBox(height: 10,),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 32.0),
                  child: Column(
                    children: [




                      Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        child: TextFormField(
                          controller:  emailText,
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.email],
                          cursorColor: Colors.purple,

                          decoration: InputDecoration(

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Colors.white38,
                                width: 2,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 2
                              ),
                            ),


                            hintText: "email",
                            //labelText: "enter email",

                            prefixIcon: Icon(Icons.email,
                              color: Colors.purple,),

                          ),


                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {return "email required";
                            }


                            if(value==null || value.isEmpty ||!value.contains("@") || !value.contains("."))
                            {
                              return "invalid email";
                            }

                            return null;
                          },


                        ),
                      ),



                      SizedBox(height: 10,),






                      Container(

                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        child: TextFormField(
                          controller: nameText,
                          keyboardType: TextInputType.text,

                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Colors.white38,
                                width: 2,
                              ),
                            ),
                            //prefixText: "Email",
                            prefixIcon: Icon(Icons.supervised_user_circle,
                              color: Colors.purple,),


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
                        height: 10,
                      ),




                      Container(

                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        child: TextFormField(
                          controller: phoneText,

                          keyboardType: TextInputType.phone,

                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Colors.white38,
                                width: 2,
                              ),
                            ),
                            //prefixText: "Email",
                            prefixIcon: Icon(Icons.phone,
                              color: Colors.purple,),


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
                        height: 10,
                      ),




                      Container(

                        alignment: Alignment.center,
                        width: 300,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),

                        child: TextFormField(
                          controller: passwordText,

                          //keyboardType: TextInputType.number,
                          obscureText:   !passVisibility,
                          obscuringCharacter: "*",
                          autofillHints: [AutofillHints.password],

                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),


                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Colors.white38,
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
                              icon: passVisibility? Icon(Icons.visibility,color: Colors.red,) :
                              Icon(Icons.visibility_off,color: Colors.purple,),
                            ),



                            // labelText: "Password",

                            hintText: "Password",

                          ),


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




                      SizedBox(height: 10,),




                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Select Gender",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
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

                                color: Colors.purple,

                              ),

                            ),



                            Radio(

                              activeColor: Colors.purple,

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

                                color: Colors.purple,

                              ),

                            ),
                            Radio(

                              activeColor: Colors.purple,

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




                  onTap: () async {
                    // Firestore reference
                    CollectionReference collRef = FirebaseFirestore.instance.collection('users');

                    // Add data to Firestore database
                    try {
                      await collRef.add({
                        'name': nameText.text,
                        'email': emailText.text,
                        'password': passwordText.text,
                        'phone number': phoneText.text,
                      });

                      // Firebase Authentication
                      if (_formKey.currentState!.validate()) {
                        try {
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailText.text,
                            password: passwordText.text,
                          );
                          print("Sign up successfully");
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Successfully Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        } catch (error) {
                          print("Error: ${error.toString()}");
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Already Signed Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          );
                        }
                      }
                    } catch (error) {
                      print("Error adding data to Firestore: $error");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Error Signing Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      );
                    }
                  },




                  child: AnimatedContainer(
                    curve: Curves.slowMiddle,

                    duration: Duration(seconds: 2),

                    alignment: Alignment.center,
                    width : 260,
                    height: 60,
                    child :Text("Sign Up",
                      style: TextStyle(
                        fontFamily: "Preahvihear",
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),),

                    decoration: BoxDecoration(
                      // shape:changebutton ?  BoxShape.circle:BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.purple,
                      //borderRadius: BorderRadius.circular(
                      // changebutton ? 10 : 30),

                    ),

                  ),
                ),





                SizedBox(
                  height: 10,
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
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    minimumSize:MaterialStateProperty.all(Size(180, 40)),
                    shape: MaterialStateProperty.all(StadiumBorder()),
                  ),
                  //style: TextButton.styleFrom(
                  //minimumSize: Size(200, 40,),
                  //),

                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPAge()));
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
