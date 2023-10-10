import 'package:flutter/material.dart';
import 'package:propertyapp/view/logninScreen.dart';
import 'package:propertyapp/view/signupScreen.dart';


class OnboardScreen extends StatefulWidget {



  const OnboardScreen({super.key});
 
  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
 
  

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/onboard.jpg') ,
              radius: height * .12 ,),
              SizedBox(height: height * .03,),
            // Text
            const Text("Let's you in" , style: TextStyle(fontSize: 42 , fontWeight: FontWeight.bold),),
            
            SizedBox(height: height * .03,),


                                // Facebook
              InkWell(
                    onTap: (){
                  
                },
                child: Container(
                  alignment: Alignment.center,
                  height: height * .075,
                  width: width * .9,
                  decoration:  BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 0.002
                      )
                    ],
                    border: Border.all(
                      color: const Color.fromARGB(255, 252, 252, 252)
                    ),
                    color: Color.fromARGB(255, 248, 244, 244),
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/facebook.png'),
                        radius: height * .02
                      ,),
                     SizedBox(width: width * .05,),
                       Text('Continue with Facebook' , style:Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: height * .018,),
              
                    // Google
              InkWell(
                onTap: (){

                },
                child: Container(  
                  alignment: Alignment.center,
                  height: height * .075,
                  width: width * .9,
                  decoration:  BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 0.002
                      )
                    ],
                    border: Border.all(
                      color: const Color.fromARGB(255, 252, 252, 252)
                    ),
                    color: Color.fromARGB(255, 248, 244, 244),
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/google.png'),
                        radius: height * .02
                      ,),
                     SizedBox(width: width * .05,),
                       Text('Continue with Google' , style:Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: height * .018,),

                // Apple
              InkWell(
                    onTap: (){
                  
                },
                child: Container(
                  alignment: Alignment.center,
                  height: height * .075,
                  width: width * .9,
                  decoration:  BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 0.002
                      )
                    ],
                    border: Border.all(
                      color: const Color.fromARGB(255, 252, 252, 252)
                    ),
                    color: Color.fromARGB(255, 248, 244, 244),
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/apple-logo.png'),
                        radius: height * .02
                      ,),
                     SizedBox(width: width * .05,),
                       Text('Continue with Apple' , style:Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: height * .018,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('------------------'  , style:TextStyle(color: Colors.grey.shade400 ,fontSize: 18)),
              Text(' or ' , style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900 ,fontSize: 18),),
              Text('------------------' , style:TextStyle(color: Colors.grey.shade400 ,fontSize: 18) ),
             ],
          ),
            SizedBox(height: height * .03,),
             ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
             },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              elevation: 4,
              shadowColor: Colors.lightBlue
            ), 
             child: Padding(
               padding:  EdgeInsets.symmetric( horizontal:  width * .18 , vertical :  height * .018),
               child: Text('Sign in with password' , style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white , fontWeight: FontWeight.w500 ),),
             ),
             
           ),
            SizedBox(height: height * .03,),
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

    );
  }
}