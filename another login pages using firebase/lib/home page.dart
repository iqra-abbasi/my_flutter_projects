import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s_login_task/sign%20up%20page.dart';
import 'package:s_login_task/welcome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final emailText=TextEditingController();
  final passwordText=TextEditingController();
  bool passwordvisibility=false;

  //for form validation
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
//backgroundColor: Colors.grey[100],
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
                  child: Image.asset(
                    "assets/images/login.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Login Now",
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



              SizedBox(height: 20,),


Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text("Forget Password?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.teal,
            fontFamily: "Preahvihear",
          ),
          textScaleFactor: 1.5,)

  ],
),


              SizedBox(height: 5,),





              InkWell(



                onTap: ()async
                {
                  //fire base
                  if (_formKey.currentState!.validate()) {
                    // Firebase authentication logic
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailText.text,
                        password: passwordText.text,
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WElcome()));
                    } catch (error) {
                      print("Error: ${error.toString()}");

                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("No Email Exists.You need To SignUp First",
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 20, // Set the font size
                            ),)));
                    }
                  }





                },


                child: AnimatedContainer(

                  duration: Duration(seconds: 2),
                  curve: Curves.slowMiddle,

                  alignment: Alignment.center,
                  height: 65,
                  width: 320,

                  child: Text("Login",
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

              SizedBox(height: 10,),

              Text("Or Continue with",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                  fontFamily: "Preahvihear",
                ),
                textScaleFactor: 1.2,
              ),


              SizedBox(height: 10,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.facebook,
                    size: 30,
                    color: Colors.blue,),
                  ),


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
