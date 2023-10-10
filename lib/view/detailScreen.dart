import 'package:flutter/material.dart';
import 'package:propertyapp/view/homeScreen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .08, vertical: height * .005  ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Detail' , style: TextStyle(fontWeight: FontWeight.w800 , fontSize: 23),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: height * .06,
                        width: width * .12,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 185, 224, 244),
                        borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        child: Center(child: Icon(Icons.arrow_back)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: height * .02,),
                Container(
                  height: height * .35,
                  width: width * .9,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 185, 224, 244),
                      borderRadius: BorderRadius.all(Radius.circular(14))
                      ),
                  child: ClipRRect(
                                    borderRadius: BorderRadius.all( Radius.circular(14)),
                                    child: Image(image: AssetImage('assets/pic2.jpg') ,fit: BoxFit.cover, )),
                ),
                 SizedBox(height: height * .015,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('CRAFTSMAN HOUSE' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                      Text('520 N Beaudry Ave, Los Angeles' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w500))
                    ],)
                    ,
                      Container(
                      height: height * .06,
                      width: width * .12,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 185, 224, 244),
                      borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Center(child: Icon(Icons.bookmark_add_outlined , size: 26,))
                    ),
                    ], ),
                  SizedBox(height: height * .005,),
                    Row(
                      children: [
                        const Icon(Icons.bed , color: Color.fromARGB(255, 238, 221, 68), size: 24,),
                        SizedBox(width: width * .02,),
                        Text('4 Beds' , style:  TextStyle(fontSize: 13 , color: Colors.grey.shade600, fontWeight: FontWeight.w500),),
                        SizedBox(width: width * .05,),
                       
                        const Icon(Icons.bathtub , color: Color.fromARGB(255, 238, 221, 68), size: 24,),
                        SizedBox(width: width * .02,),
                        Text('4 Baths' , style:  TextStyle(fontSize: 13 , color: Colors.grey.shade600, fontWeight: FontWeight.w500),),
                        SizedBox(width: width * .05,),
        
                        
                        const Icon(Icons.car_rental , color: Color.fromARGB(255, 238, 221, 68), size: 24,),
                        SizedBox(width: width * .02,),
                        Text('1 Garage' , style:  TextStyle(fontSize: 13 , color: Colors.grey.shade600, fontWeight: FontWeight.w500),),
                        SizedBox(width: width * .05,),
                      ],
                    ),
                    SizedBox(height: height * .018,),
                    Row(
                     
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/women.jpg'),
                        radius: height * .03,),
                        SizedBox(width: width * .02,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Rebecca Tetha' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
                      Text('Owner Craftsman House' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w600 , color: Colors.grey.shade500))
                    ],),
                        SizedBox(width: width * .04,),
                    
                     Row(
                       children: [
                         Container(
                          height: height * .046,
                          width: width * .25,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 4, 44, 65),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Icon(Icons.call , size: 25, color: Colors.white,),
                              SizedBox(width: width * .017,),
                              Text('Call' , style: TextStyle( fontSize: 18, fontWeight: FontWeight.w700 , color: Colors.white),)
                            ],
                          )
                    ),
                       ],
                     ),
                        ],
                       )
                      ], ),
                       SizedBox(height : height * .01,),
                  const Text('Completely redone in 2021 4 bedrroms ,4 bathrooms , 1 garage amazing crub apperal and eterainare water views. Tons of built-ins & extras' ,
                  style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height : height * .01,),
                 Text('Gallery' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600 , color: const Color.fromARGB(255, 45, 43, 43)),), 
        
                    SizedBox(height : height * .01,),
        
                    Row(
                      children: [
                        // for(int i = 1 ; i <= 4 ; i++)
                        Container(
                          height: height * .09 ,
                          width: width * .19,
                           decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 185, 224, 244),
                          borderRadius: BorderRadius.all(Radius.circular(14))
                          ),
                        child: const ClipRRect(
                                    borderRadius: BorderRadius.all( Radius.circular(14)),
                                    child: Image(image: AssetImage('assets/pic1.jpg') ,fit: BoxFit.cover, )
                          ),
                        ),
                        SizedBox(width: width * .025,),
                        Container(
                          height: height * .09 ,
                          width: width * .19,
                           decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 185, 224, 244),
                          borderRadius: BorderRadius.all(Radius.circular(14))
                          ),
                        child: const ClipRRect(
                                    borderRadius: BorderRadius.all( Radius.circular(14)),
                                    child: Image(image: AssetImage('assets/pic3.jpg') ,fit: BoxFit.cover, )
                          ),
                        ),
                        SizedBox(width: width * .025,),
                        Container(
                          height: height * .09 ,
                          width: width * .19,
                           decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 185, 224, 244),
                          borderRadius: BorderRadius.all(Radius.circular(14))
                          ),
                          child: const ClipRRect(
                                    borderRadius: BorderRadius.all( Radius.circular(14)),
                                    child: Image(image: AssetImage('assets/pic4.jpeg') ,fit: BoxFit.cover, )
                          ),
                        ),
                        SizedBox(width: width * .025,),
                        Stack(
                          
                          children: [
                            Container(
                              height: height * .09 ,
                              width: width * .19,
                               decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(14))
                              ),
                              child: const ClipRRect(
                                        borderRadius: BorderRadius.all( Radius.circular(14)),
                                        child: Image(image: AssetImage('assets/pic6.jpg') ,fit: BoxFit.cover, )
                              ),
                
                            ),
                              Container(
                              height: height * .09 ,
                              width: width * .19,
                              
                               decoration:  BoxDecoration(
                                color: Color.fromARGB(255, 18, 17, 17).withOpacity(0.6) ,
                              borderRadius: BorderRadius.all(Radius.circular(14))
                              ),
                              child: const ClipRRect(
                                        borderRadius: BorderRadius.all( Radius.circular(14)),
                              ),
                
                            ),
                            Positioned(
                              top : .045,
                              bottom: 0,
                              left: 0.45,
                              right: 0,
                              child: Center(child: Text('+10' , textAlign: TextAlign.center  , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.w700 , color: Colors.white),)))
                          
                          ],
                        ),
                      ],
                    ),                
        
        
        
                  
                  SizedBox(height : height * .005,),
                 Text('Price' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600 , color : Color.fromARGB(255, 45, 43, 43)),), 
                  
                   SizedBox(height : height * .0005,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$5990000" , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.w800 , color : Colors.black),), 
                           Container(
                      height: height * .048,
                      width: width * .32,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 4, 44, 65),
                      borderRadius: BorderRadius.all(Radius.circular(12))
                      ), 
                      child :  Center(child: Text('BUY NOW' , style: TextStyle( letterSpacing: 1, fontSize: 18, fontWeight: FontWeight.w600 , color: Colors.white),))
                        
                      )
                    
                    ],
                   ),
                        SizedBox(
                    height: height * .01,
                  ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}