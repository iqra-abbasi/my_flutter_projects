import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s_login_task/welcome.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var nameText=TextEditingController();
  final emailText=TextEditingController();
  final passwordText=TextEditingController();
  final confirmPasswordText = TextEditingController();
  bool passwordvisibility=false;
  
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
     // backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0), // Adjust the radius as needed
                  bottomRight: Radius.circular(40.0),
                ),





                child: Container(
                  width: 800,
                  height: 350,
                  child: Image.asset("assets/images/signup.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("SignUp Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Preahvihear",
                      ),
                      textScaleFactor: 1.5,),
                  ],
                ),
              ),


              SizedBox(height: 20,),

              Container(
                width: 330,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: TextFormField(
                  controller:  emailText,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: [AutofillHints.email],
                  cursorColor: Colors.blue,

                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white38,
                        width: 2,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2
                      ),
                    ),


                    hintText: "Enter Email",
                    //labelText: "enter email",

                    prefixIcon: Icon(Icons.email,
                      color: Colors.black,),

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


              SizedBox(height: 15,),





              Container(

                alignment: Alignment.center,
                width: 330,
                height: 60,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: TextFormField(
                  controller: nameText,
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),


                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white38,
                        width: 2,
                      ),
                    ),
                    //prefixText: "Email",
                    prefixIcon: Icon(Icons.supervised_user_circle,
                      color: Colors.black,),


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
                height: 15,
              ),








              Container(

                alignment: Alignment.center,
                width: 330,
                height: 60,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: passwordText,

                  obscureText: !passwordvisibility,

                  // keyboardType: TextInputType.number,
                  obscuringCharacter: ".",
                  autofillHints: [AutofillHints.password],

                  decoration: InputDecoration(


                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),


                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white38,
                        width: 2,
                      ),
                    ),

                    // suffixIcon: Icon(Icons.password,
                    // color: Colors.black,),

                    prefixIcon: Icon(CupertinoIcons.padlock_solid,
                      color: Colors.black,),


                    suffixIcon: IconButton(
                      onPressed: ()
                      {
                        setState(() {
                          passwordvisibility=!passwordvisibility;
                        });
                      },

                      icon: passwordvisibility? Icon(Icons.visibility,color: Colors.black,) :
                      Icon(Icons.visibility_off,color: Colors.black54,),
                    ),



                    //labelText: "Password",

                    hintText: "Your Password",

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

SizedBox(height: 15,),


              Container(

                alignment: Alignment.center,
                width: 330,
                height: 60,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: confirmPasswordText,

                  obscureText: !passwordvisibility,

                  // keyboardType: TextInputType.number,
                  obscuringCharacter: ".",
                  autofillHints: [AutofillHints.password],

                  decoration: InputDecoration(


                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),


                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white38,
                        width: 2,
                      ),
                    ),

                    // suffixIcon: Icon(Icons.password,
                    // color: Colors.black,),

                    prefixIcon: Icon(CupertinoIcons.padlock_solid,
                      color: Colors.black,),


                    suffixIcon: IconButton(
                      onPressed: ()
                      {
                        setState(() {
                          passwordvisibility=!passwordvisibility;
                        });
                      },

                      icon: passwordvisibility? Icon(Icons.visibility,color: Colors.black,) :
                      Icon(Icons.visibility_off,color: Colors.black54,),
                    ),



                    //labelText: "Password",

                    hintText: "Confirm Password",

                  ),


                  validator: (confirmPasswordValue) {
                    final passwordValue = passwordText.text;
                    if (confirmPasswordValue!.isEmpty) {
                      return "Confirm password required";
                    } else if (confirmPasswordValue != passwordValue) {
                      return "Passwords do not match";
                    }
                    return null;
                  },


                ),
              ),




              SizedBox(height: 20,),


              InkWell(



                onTap: ()async
                {




                  // Firestore reference
                  CollectionReference collRef = FirebaseFirestore.instance.collection('users');

                  // Add data to Firestore database
                 try {
                    await collRef.add({
                      'username': nameText.text,
                      'email': emailText.text,
                      'password': passwordText.text,
                      'confirm password': confirmPasswordText.text,

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
                            builder: (context) => WElcome(),
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
                          "Error Occuring During Signing Up",
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

                  duration: Duration(seconds: 2),
                  curve: Curves.slowMiddle,

                  alignment: Alignment.center,
                  height: 65,
                  width: 320,

                  child: Text("Sign Up",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: " Preahvihear",
                     // decoration: TextDecoration.underline,
                      //decorationColor: Colors.white,
                      color: Colors.white,
                    ),
                    textScaleFactor: 1.3,),

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff37ecba),
                        Color(0xff72afd3),
                        // Color(0xff43e97b),
                        //Color(0xff38f9d7),
                      ],
                    ),

                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              SizedBox(height: 5,),

              Text("Or Continue with",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                  fontFamily: "Preahvihear",
                ),
                textScaleFactor: 1.2,
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.facebook,
                    size: 30,
                    color: Colors.blue,),


                  Icon(Icons.apple,
                    size: 30,
                    color: Colors.black,),


                  Container(
                      width: 20,
                      height: 20,
                      child: Image.asset("assets/images/google.png"))
                ],
              ),


              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Preahvihear",
                    ),
                    textScaleFactor: 1.2,
                  ),



                  InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },

                    child: Text("Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.teal,
                        fontFamily: "Preahvihear",
                      ),
                      textScaleFactor: 1.2,),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}
