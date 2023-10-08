import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentification/home.dart';
import 'package:firebase_authentification/sign.dart';
import 'package:flutter/material.dart';



class LoginPAge extends StatefulWidget {
  const LoginPAge({super.key});

  @override
  State<LoginPAge> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPAge> {


  bool passVisibility=false;
  bool changebutton=false;


  var emailText=TextEditingController();
  var passwordText=TextEditingController();

  //for form validation
  final _formKey = GlobalKey<FormState>();

  //for firebase



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.grey[100],

      appBar: AppBar(

        title: Center(child: Text("Login Page")),

      ),


      body: Container(


        height: 800,
        width: 1000,


        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                // Colors.teal.shade100,
                //Colors.blue.shade50,

                Color(0xfffbc8d4),
                Color(0xff9795f0),

              ]

          ),
        ),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Form(

            key:_formKey ,

            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                      width: 700,
                      height: 200,

                      child: Image.asset("assets/images/log.png",
                      fit: BoxFit.fill,)),
                ),


                SizedBox(
                  height:20,
                ),


                Text("LOGIN ",
                  style: TextStyle(
                    fontFamily: "Preahvihear",
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  textScaleFactor: 1.5,),


                SizedBox(height: 20,),



                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                  ),

                  child: TextFormField(
                    controller:  emailText,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                    cursorColor: Colors.blue,

                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.white38,
                          width: 2,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.purple,
                            width: 2
                        ),
                      ),


                      hintText: "email",
                      //labelText: "enter email",

                      suffixIcon: Icon(Icons.email,
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


                SizedBox(height: 20,),






                Container(

                  alignment: Alignment.center,
                  width: 300,
                  height: 60,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                  ),

                  child: TextFormField(
                    cursorColor: Colors.blue,
                    controller: passwordText,

                    obscureText: !passVisibility,

                    // keyboardType: TextInputType.number,
                    obscuringCharacter: "*",
                    autofillHints: [AutofillHints.password],

                    decoration: InputDecoration(


                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),


                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.white38,
                          width: 2,
                        ),
                      ),

                      // suffixIcon: Icon(Icons.password,
                      // color: Colors.black,),


                      suffixIcon: IconButton(
                        onPressed: ()
                        {
                          setState(() {
                            passVisibility=!passVisibility;
                          });
                        },

                        icon: passVisibility? Icon(Icons.visibility,color: Colors.red,) :
                        Icon(Icons.visibility_off,color: Colors.purple,),
                      ),



                      //labelText: "Password",

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





                SizedBox(height: 30,),



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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
                    height: 60,
                    width: 250,

                    child: Text("Login",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: " Preahvihear",
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        color: Colors.white,
                      ),
                      textScaleFactor: 1.3,),

                    decoration: BoxDecoration(
                      color:changebutton? Colors.blueGrey: Colors.purple,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),



                SizedBox(height: 10,),





                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      Text("Don't You Have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black54,
                        ),),

                      SizedBox(
                        width: 15,
                      ),

                      InkWell(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder:(context) =>SignUp()));

                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: " Preahvihear",
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.purple

                            ),
                            textScaleFactor: 1.2),
                      ),

                    ],
                  ),
                )

              ],
            ),
          ),





        ),
      ),

    );
  }
}
