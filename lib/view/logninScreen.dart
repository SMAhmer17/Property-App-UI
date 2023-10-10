import 'package:flutter/material.dart';
import 'package:propertyapp/view/detailScreen.dart';
import 'package:propertyapp/view/homeScreen.dart';
import 'package:propertyapp/view/signupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _obsecure = true;

  @override
  Widget build(BuildContext context) {
        final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    
    return Scaffold(
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/login.jpg') ,
                radius: height * .12 ,),
                SizedBox(height: height * .00001,),
              // Text
              const Text("Login to your Account" , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.bold),),
              
              SizedBox(height: height * .03,),
        
            Padding(
              padding:  EdgeInsets.symmetric(horizontal : width * .050),
              child: const TextField( 
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 248, 244, 244),
                  contentPadding: EdgeInsets.symmetric(horizontal: 14 , vertical : 20),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_rounded , color: Colors.black,),
                  enabledBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 1.0),
                     borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                ),
              ),
            ),
        
             
              SizedBox(height: height * .02,),
              
            Padding(
              padding:  EdgeInsets.symmetric(horizontal : width * .050),
              child:  TextField( 
                obscureText: _obsecure,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 248, 244, 244),
                  contentPadding: EdgeInsets.symmetric(horizontal: 14 , vertical : 20),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_rounded , color: Colors.black,),
                  suffixIcon:  InkWell(child: Icon(Icons.remove_red_eye_sharp)),
                  enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 1.0),
                     borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                ),
              ),
            ),
        
            SizedBox(height: height * .015,),
              

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(value: true, onChanged: (value){}  ),
                  SizedBox(width: 10,),
                  Text('Remeber me' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),)

                ],
              ),
              SizedBox(height: height * .015,),
           
               ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
               },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                elevation: 4,
                shadowColor: Colors.lightBlue
              ), 
               child: Padding(
                 padding:  EdgeInsets.symmetric( horizontal:  width * .26 , vertical :  height * .018),
                 child: Text('Sign in' , style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white , fontWeight: FontWeight.w500 ),),
               ), ),
                  SizedBox(height: height * .02,),
                   InkWell(
                  onTap: (){
                    
                  }
                  ,
                  child: Text('Forget the password?' , style: TextStyle(color: Colors.lightBlue, fontSize: 16 , fontWeight: FontWeight.w600))),
             
              SizedBox(height: height * .02,),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('------------'  , style:TextStyle(color: Colors.grey.shade400 ,fontSize: 18)),
                Text(' or continue with ' , style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600 ,fontSize: 18),),
                Text('------------' , style:TextStyle(color: Colors.grey.shade400 ,fontSize: 18) ),
               ],
            ),
              SizedBox(height: height * .03,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: height * .075,
                      width: width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color.fromARGB(255, 250, 249, 249),
                        border: Border.all(
                          color: Colors.grey.shade200
                        )),
                      child: Center(
                        child: CircleAvatar(
                          radius: height * .018,
                          backgroundImage: AssetImage('assets/facebook.png') ,
                          backgroundColor: Colors.transparent,
                          ),
                      ),
                    ),
                  ),
                SizedBox(width: width * .04,),
                    InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: height * .075,
                      width: width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color.fromARGB(255, 250, 249, 249),
                        border: Border.all(
                          color: Colors.grey.shade200
                        )),
                      child: Center(
                        child: CircleAvatar(
                          radius: height * .018,
                          backgroundImage: AssetImage('assets/google.png') ,
                          backgroundColor: Colors.transparent,
                          ),
                      ),
                    ),
                  ),
                SizedBox(width: width * .04,),
                    InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: height * .075,
                      width: width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color.fromARGB(255, 250, 249, 249),
                        border: Border.all(
                          color: Colors.grey.shade200
                        )),
                      child: Center(
                        child: CircleAvatar(
                          radius: height * .018,
                          backgroundImage: AssetImage('assets/apple-logo.png') ,
                          backgroundColor: Colors.transparent,
                          ),
                      ),
                    ),
                  ),
                SizedBox(width: width * .04,)
                
                  
                ],
              ),



              SizedBox(height: height * .02,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("Don't have an account? " , style: TextStyle(color: Colors.grey.shade700 , fontSize: 14),),
                InkWell(
                  onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                  }
                  ,
                  child: Text('Sign up' , style: TextStyle(color: Colors.lightBlue, fontSize: 16 , fontWeight: FontWeight.w600)))
              ],)
            
            ],
          ),
        ),
      ),
    );
  }
}