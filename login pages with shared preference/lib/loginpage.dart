import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task03/home.dart';
import 'package:task03/resetPassword.dart';
import 'package:task03/signUpPage.dart';
import 'dart:async';

import 'package:task03/welcome.dart';

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.grey[100],

      appBar: AppBar(

        title: Center(child: Text("Login Page")),

      ),


      body: Container(


        height: 800,

        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
               // Colors.teal.shade100,
                //Colors.blue.shade50,
                Color(0xffa8edea),
                Color(0xfffed6e3),
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
                    width: 500,
                      height:250,

                      child: Image.asset("assets/images/login1.png")),
                ),



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
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 2
                        ),
                      ),


                      hintText: "email",
                      //labelText: "enter email",

                      suffixIcon: Icon(Icons.email,
                      color: Colors.blue,),

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
                          color: Colors.deepOrangeAccent,
                          width: 2,
                        ),
                      ),


                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.blue,
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

                        icon: passVisibility? Icon(Icons.visibility,color: Colors.black,) :
                        Icon(Icons.visibility_off,color: Colors.blue,),
                      ),



                      //labelText: "Password",

                      hintText: "Password",

                    ),

                    //validation
                    /* validator: (value)
                                {
                                  if(value!.isEmpty)
                                  {
                                    return "please enter your password";
                                  }
                                  else if(value.length<5)
                                  {
                                    return "please enter 5 digit password";
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




                SizedBox(height: 5,),



                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    TextButton(
                        onPressed: ()
                        {

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
                        },
                        child: Text("Forget Password?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          fontFamily: " Preahvihear"
                        ),
                        textScaleFactor: 1.3,
                        ),
                    ),

                  ],
                ),





SizedBox(height: 25,),



                InkWell(
onTap: ()async
                  {

                    //use of shared preferences
                    //get value through shared preference

                    var uemail=emailText.text.toString();
                    var upassword=passwordText.text.toString();


                    var sharepref=await SharedPreferences.getInstance();
                    sharepref.setBool("login",true);


//for sign up to get values
                    var pref = await SharedPreferences.getInstance();
                    var signup = pref.getBool("sign");




                    if(signup!=null)
                    {
                      if(signup)
                      {

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) =>Welcome()));



                      }
                      else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Sign up first")));
                      }
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Don't have an account,You need to Sign Up First")));

                    }


                    if(_formKey.currentState!.validate())
                    {
                      setState(() {
                        changebutton=true;
                      });
                    }



                    await Future.delayed(Duration(seconds: 2));



                    setState(() {
  changebutton=false;
});


                  },

                  child: AnimatedContainer(

                    duration: Duration(seconds: 2),
                    curve: Curves.slowMiddle,

                    alignment: Alignment.center,
                    height: 50,
                    width: changebutton? 0:250,

                    child:changebutton? Icon(Icons.done,color: Colors.white,): Text("Login",
                    style: TextStyle(
                      fontSize:changebutton? 0: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: " Preahvihear",
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      color: Colors.white,
                    ),
                    textScaleFactor: 1.3,),

                    decoration: BoxDecoration(
                      color:changebutton? Colors.blueGrey: Colors.blue,
                      borderRadius:changebutton? BorderRadius.circular(25): BorderRadius.circular(25),
                    ),
                  ),
                ),



                SizedBox(height: 15,),


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
                          Navigator.push(context, MaterialPageRoute(builder:(context) => SignUp()));

                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: " Preahvihear",
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,

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
