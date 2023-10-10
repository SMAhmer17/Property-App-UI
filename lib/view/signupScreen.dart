import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text('Fill your Profile' , 
        style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
      
                Stack(
                  children: [
                    CircleAvatar(
                      radius: height * .1,
                      backgroundColor: Colors.grey.shade200,
                      child: Icon(Icons.person , size: 100, color: Colors.grey,),
                    ),
                    Positioned(
                      bottom: 6,
                      right: 6,
      
                      
                      child: Container(
                        height: 35,
                        width: 35,
                        
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                          Radius.circular(8)
                          ),
                          color: Colors.lightBlue,
                          ),
                      
                      child: InkWell(
                        onTap: (){},
                        child: const Icon(Icons.edit , weight: 12  , color: Colors.white,))))
                  ],
                ),
                SizedBox(height: height * .03,),
      
      
                 Padding(
                padding:  EdgeInsets.symmetric(horizontal : width * .050),
                child: const TextField( 
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 244, 244),
                    contentPadding: EdgeInsets.symmetric(horizontal: 14 , vertical : 20),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 105, 102, 102)),
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
                child: const TextField( 
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 244, 244),
                    contentPadding: EdgeInsets.symmetric(horizontal: 14 , vertical : 20),
                    hintText: 'Date of birth',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 105, 102, 102)),
                    enabledBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 1.0),
                       borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
              ),
                SizedBox(height: height * .015,),
      
      
              
                 Padding(
                padding:  EdgeInsets.symmetric(horizontal : width * .050),
                child: const TextField( 
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 244, 244),
                    contentPadding: EdgeInsets.symmetric(horizontal: 14 , vertical : 20),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 105, 102, 102)),
                    enabledBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 1.0),
                       borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
              ),
                SizedBox(height: height * .015,),
      
      
              
                 Padding(
                padding:  EdgeInsets.symmetric(horizontal : width * .050),
                child: const TextField( 
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 244, 244),
                    contentPadding: EdgeInsets.symmetric(horizontal: 14 , vertical : 20),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 105, 102, 102)),
                    enabledBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 1.0),
                       borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
              ),
                SizedBox(height: height * .015,),
      
      
      
              
                 Padding(
                padding:  EdgeInsets.symmetric(horizontal : width * .050),
                child: const TextField(
                  obscureText: true, 
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 248, 244, 244),
                    contentPadding: EdgeInsets.symmetric(horizontal: 14 , vertical : 20),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 105, 102, 102)),
                    enabledBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Color.fromARGB(255, 243, 243, 243), width: 1.0),
                       borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
              ),
                SizedBox(height: height * .015,),
      
      
                SizedBox(height: height * .03,),
      
               ElevatedButton(onPressed: (){
                   },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    elevation: 4,
                    shadowColor: Colors.lightBlue
                  ), 
                   child: Padding(
                     padding:  EdgeInsets.symmetric( horizontal:  width * .26 , vertical :  height * .018),
                     child: Text('Continue' , style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white , fontWeight: FontWeight.w500 ),),
                   ), ),
                   SizedBox(height: height * .01,)
            ],
          ),
        ),
      ),
    );
  }
}