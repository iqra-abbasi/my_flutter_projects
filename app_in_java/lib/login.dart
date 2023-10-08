import 'package:app_in_java/fashion-pk.dart';
import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/main.dart';
import 'package:app_in_java/reset-password.dart';
import 'package:app_in_java/sign-up-page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {




  bool passVisibility=false;

  bool changebutton=false;

  var emailText=TextEditingController();
  var passwordText=TextEditingController();

  //for form validation
  final _formKey = GlobalKey<FormState>();



  //method create
  moveToHome(BuildContext context) async
  {

    //get value through shared preference

    var uemail=emailText.text.toString();
    var upassword=passwordText.text;


    var sharepref= await SharedPreferences.getInstance();

    sharepref.setBool("login",true);



    var pref = await SharedPreferences.getInstance();
    var signup = pref.getBool("sign");



    print("Email: $uemail, Password:$upassword");


    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });


      if(signup!=null)
      {
        if(signup)
       {

         await Future.delayed(Duration(seconds: 1));
      Navigator.push(
          context, MaterialPageRoute(
          builder: (context) =>FashionPk()));



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





//after going to next page button comes to its original shape
      setState(() {
        changebutton = false;
      });
    }
  }



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
       // backgroundColor: Colors.grey[100],

        appBar: AppBar(
          title: Center(child: Text("Login Page")),
          backgroundColor: Colors.teal[800],
        ),


        body:Container(
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

              key:_formKey ,
              child: Column(
                children: [

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: 380,
                        height: 150,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/login2.png",
                          ),
                          radius: 100,

                        ),
                      ),
                    ),
                  ),


                 // Image.asset("assets/images/login.png",
                   // fit: BoxFit.cover,),


                  SizedBox(
                    height:10,
                  ),


                  Text("LOGIN ",
                    style: TextStyle(
                      fontFamily: "Preahvihear",
                      fontSize: 20,
                      color: Colors.teal[700],
                      fontWeight: FontWeight.bold,
                    ),
                    textScaleFactor: 1.5,),



                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 32.0),
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
                            cursorColor: Colors.deepOrange,
                            controller: emailText,//set controller
                            autofillHints: [AutofillHints.email],
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
                                color: Colors.teal[800],),

                            //  labelText: "Email",

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
                          width: 380,
                          height: 60,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: TextFormField(
                            cursorColor: Colors.deepOrange,
                            controller: passwordText,

                            obscureText: !passVisibility,
                           // keyboardType: TextInputType.number,
                            obscuringCharacter: "*",
                            autofillHints: [AutofillHints.password],

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
                                Icon(Icons.visibility_off,color: Colors.teal[800],),
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


                        SizedBox(
                          height: 10,
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
                                  fontFamily: "Preahvihear",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.teal[700],
                                  color: Colors.teal[700],
                                ),)
                            ],
                          ),
                        ),


                        SizedBox(
                          height: 25,
                        ),




                        //container and inkwell
                        InkWell(
                          onTap: () => moveToHome(context),



                          child: AnimatedContainer(

                            duration: Duration(seconds: 2),
                            curve: Curves.slowMiddle,

                            alignment: Alignment.center,
                            width:changebutton ? 0 : 340,
                            height: 60,
                            child: changebutton ?
                            Icon(Icons.done ,
                              color: Colors.white,) :Text("Login",
                              style: TextStyle(
                                fontFamily: "Preahvihear",
                                fontSize:changebutton ? 0: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),),

                            decoration: BoxDecoration(
                              //shape:changebutton ?  BoxShape.circle:BoxShape.rectangle,
                              color:changebutton ? Colors.teal[300]: Colors.teal[700],
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
                                  fontSize: 15,
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
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal[700],

                                    ),
                                    textScaleFactor: 1.2),
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
          ),
        ),
    );

  }

}
