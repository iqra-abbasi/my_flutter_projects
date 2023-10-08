import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/main.dart';
import 'package:app_in_java/reset-password.dart';
import 'package:app_in_java/sign-up-page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton=false;

  //for form validation
  final _formKey = GlobalKey<FormState>();

  //method create
  moveToHome(BuildContext context) async
  {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      Navigator.push(
          context, MaterialPageRoute(
          builder: (context) => HomePage()));

//after going to next page button comes to its original shape
      setState(() {
        changebutton = false;
      });
    }
  }




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white70,

        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.purple,
        ),


        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(

            key:_formKey ,
            child: Column(
              children: [


                Image.asset("assets/images/login.png",
                  fit: BoxFit.cover,),


                SizedBox(
                  height:20,
                ),


                Text("LOGIN HERE!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  textScaleFactor: 1.8,),

                SizedBox(
                  height: 10,
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 32.0),
                  child:   Column(

                    children: [

                      Container(
                        alignment: Alignment.center,
                        width: 380,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          //obscureText: true,
                          //enabled: false,


                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.green,
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

                            /* disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 3,
                  ),
                ),

                */
                            suffixIcon: Icon(Icons.email,
                              color: Colors.black,),

                            labelText: "Email",

                            hintText: " Enter Email!",


                          ),


                          //for validation
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "please enter your email";
                            }
                            return null;
                          },

                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),


                      Container(

                        alignment: Alignment.center,
                        width: 380,
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: TextFormField(

                          obscureText: true,
                          keyboardType: TextInputType.number,
                          obscuringCharacter: "*",

                          decoration: InputDecoration(


                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.green,
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

                            suffixIcon: Icon(Icons.password,
                              color: Colors.black,),



                            labelText: "Password",

                            hintText: "Enter Password!!",

                          ),

                          //validation
                          validator: (value)
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

                        ),
                      ),


                      SizedBox(
                        height: 20,
                      ),



                      InkWell(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Forget Password?",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.purple,
                                color: Colors.purple,
                              ),)
                          ],
                        ),
                      ),


                      SizedBox(
                        height: 35,
                      ),




                      //container and inkwell
                      InkWell(
                        onTap: () => moveToHome(context),



                        child: AnimatedContainer(

                          duration: Duration(seconds: 1),

                          alignment: Alignment.center,
                          width: changebutton ? 80 : 340,
                          height: 60,
                          child: changebutton ?
                          Icon(Icons.done ,
                            color: Colors.white,) :Text("Login",
                            style: TextStyle(
                              fontSize:changebutton ? 20: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            ),),

                          decoration: BoxDecoration(
                            //shape:changebutton ?  BoxShape.circle:BoxShape.rectangle,
                            color:changebutton ? Colors.redAccent: Colors.purple,
                            borderRadius: BorderRadius.circular(
                                changebutton ? 30 : 30),

                          ),

                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text("Don't You Have an account?",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.black54,
                              ),),

                            SizedBox(
                              width: 10,
                            ),


                            InkWell(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder:(context) => SignUp()));

                              },
                              child: Text("Sign Up",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.purple,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.purple,
                                  ),
                                  textScaleFactor: 1.0),
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),
                )


              ],
            ),
          ),
        )
    );
  }
}
