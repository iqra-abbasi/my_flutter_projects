
import 'package:flutter/material.dart';
import 'package:task03/loginpage.dart';


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
          builder: (context) => LoginPAge()));

//after going to next page button comes to its original shape
      setState(() {
        changebutton = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(child: Text("Reset Password")),

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

          child: Form(
            key: _formKey,

            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 60,right: 5.0,bottom: 10.0),
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[

                          TextSpan(text: "Reset",
                            style: TextStyle(
                              fontFamily: "Preahvihear",
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: Colors.blue,

                            ),

                          ),


                          TextSpan(
                            text: "Password",
                            style: TextStyle(
                              fontFamily: "Preahvihear",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.blue,

                            ),


                          )
                        ]
                    ),
                  ),

                ),


                Text("Please enter your email address",
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.w100,
                    color: Colors.blue,
                  ),),


                SizedBox(
                  height: 60,
                ),



                Container(
                  alignment: Alignment.center,
                  width: 280,
                  height: 60,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                  ),

                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    //obscureText: true,
                    //enabled: false,
                    autofillHints: [AutofillHints.email],


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

                      /* disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),

                      */
                      prefixIcon: Icon(Icons.email,
                        color: Colors.blue,),

                      // labelText: "Email",

                      hintText: " Email!",


                    ),


                    //for validation
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return "please enter your email";
                      }

                      if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')) {
                        return 'Invalid Email';
                      }

                      return null;
                    },

                  ),
                ),



                SizedBox(
                  height: 30,
                ),





                InkWell(
                  onTap: () => moveToHome(context),



                  child: Center(
                    child: AnimatedContainer(
                      curve: Curves.slowMiddle,

                      duration: Duration(seconds: 2),

                      alignment: Alignment.center,
                      width: changebutton ? 0 : 270,
                      height: 60,
                      child: changebutton ?
                      Icon(Icons.done ,
                        color: Colors.white,) :Text("Reset Password",
                        style: TextStyle(
                          fontFamily: "Preahvihear",
                          fontSize:changebutton ? 0: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),),

                      decoration: BoxDecoration(
                        //shape:changebutton ?  BoxShape.circle:BoxShape.rectangle,
                        color:changebutton ? Colors.teal[300]: Colors.blue,
                        borderRadius: BorderRadius.circular(
                            changebutton ? 30 : 30),

                      ),

                    ),
                  ),
                ),


                SizedBox(
                  height: 15,
                ),




                TextButton(

                  child: Text("BACK!",
                    style: TextStyle(
                      fontFamily: "Preahvihear",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor:Colors.blue,
                      color:Colors.blue,
                    ),),
                  style: TextButton.styleFrom(
                    minimumSize: Size(300, 40,),
                  ),
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
