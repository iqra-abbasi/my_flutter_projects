import 'package:app_in_java/login.dart';
import 'package:app_in_java/sign-up-page.dart';
import 'package:flutter/material.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {


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
          builder: (context) => SignUp()));

//after going to next page button comes to its original shape
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Reset Password"),
      ),

      body: Form(
        key: _formKey,
        child: Column(
            children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,top: 60,right: 5.0,bottom: 10.0),
                    child: Text("Reset Password",
                style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,

                ),
                textScaleFactor: 2.0,),

                  ),


    Text("Please enter your email address",
                style: TextStyle(
                  fontSize: 20,
                 // fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),),


SizedBox(
  height: 60,
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
  height: 60,
),



              InkWell(
                onTap: () => moveToHome(context),



                child: AnimatedContainer(

                  duration: Duration(seconds: 1),

                  alignment: Alignment.center,
                  width: changebutton ? 80 : 340,
                  height: 60,
                  child: changebutton ?
                  Icon(Icons.done ,
                    color: Colors.white,) :Text("Reset Password",
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
                height: 30,
              ),

              TextButton(

                child: Text("BACK!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor:Colors.white,
                    color:Colors.white,
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

    );
  }
}
