import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/login.dart';
import 'package:flutter/material.dart';

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


  bool changebutton=false;

  //key for form
  final _formKey=GlobalKey<FormState>();

  //method
  moveToNext(BuildContext context) async
  {
    if(_formKey.currentState!.validate())
    {
      setState(()
      {
        changebutton=true;

      });

      await Future.delayed(Duration(seconds: 1));
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

      setState(() {
        changebutton=false;
      });
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,


      appBar: AppBar(
        title: Text("Sign Up!"),
        backgroundColor: Colors.purple,
      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Form(

          key: _formKey,

          child: Column(
            children: [
              Image.asset("assets/images/sign.png",
                fit: BoxFit.cover,
                //width: 600,
                //height: 300,
              ),

              SizedBox(
                height: 20,
              ),


              Text("SIGN UP!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.8,),

              SizedBox(
                height: 20,
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 32.0),
                child: Column(
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

                        //enabled: false,
                        keyboardType: TextInputType.emailAddress,

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
                      height: 20,
                    ),


                    Container(

                      alignment: Alignment.center,
                      width: 380,
                      height: 60,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: TextFormField(
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
                            color: Colors.black,),


                          labelText: "UserName",

                          hintText: "Enter User Name",

                        ),

                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "please enter your name";
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
                      width: 380,
                      height: 60,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: TextFormField(

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
                            color: Colors.black,),


                          labelText: "PhoneNumber",

                          hintText: "Enter Phone Number",

                        ),


                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "please enter your phoneNumber";
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
                      width: 380,
                      height: 60,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: TextFormField(

                        keyboardType: TextInputType.number,
                        obscureText: true,
                        obscuringCharacter: "*",

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
                          prefixIcon: Icon(Icons.key,
                            color: Colors.black,),


                          labelText: "Password",

                          hintText: "Enter Password!!",

                        ),



                        validator: (value)
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
                      ),
                    ),


                    SizedBox(
                      height: 20,
                    ),


                    Container(

                      alignment: Alignment.center,
                      width: 380,
                      height: 60,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: TextFormField(
                        keyboardType: TextInputType.name,

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
                          prefixIcon: Icon(Icons.female,
                            color: Colors.black,),


                          labelText: "Gender",

                          hintText: "Enter Gender",

                        ),
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "please enter gender";
                          }
                          return null;
                        },

                      ),
                    ),


                  ],
                ),
              ),


              SizedBox(
                height: 20,
              ),


//container and inkwell
              InkWell(
                onTap: () => moveToNext(context),




                child: AnimatedContainer(

                  duration: Duration(seconds: 1),

                  alignment: Alignment.center,
                  width: changebutton ? 60 : 340,
                  height: 60,
                  child: changebutton ?
                  Icon(Icons.done ,
                    color: Colors.white,) :Text("Sign Up",
                    style: TextStyle(
                      fontSize:changebutton ? 20: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),),

                  decoration: BoxDecoration(
                    shape:changebutton ?  BoxShape.circle:BoxShape.rectangle,
                    color:changebutton ? Colors.redAccent: Colors.purple,
                    //borderRadius: BorderRadius.circular(
                    // changebutton ? 10 : 30),

                  ),

                ),
              ),


              SizedBox(
                height: 30,
              ),

              ElevatedButton(

                child: Text("GO BACK!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    //color: Colors.purple,
                    backgroundColor: Colors.purple,
                    decoration: TextDecoration.underline,
                    decorationColor:Colors.purple,
                  ),),
                style: TextButton.styleFrom(
                  minimumSize: Size(300, 40,),
                ),
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
