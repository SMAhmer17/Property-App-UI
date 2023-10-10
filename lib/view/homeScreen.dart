import 'package:flutter/material.dart';
import 'package:propertyapp/view/detailScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: width * .08),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: width * .08,
                      top: height * .01,
                      bottom: height * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade600),
                          ),
                          Text(
                            'Los Angeles, CA',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          )
                        ],
                      ),
                      const CircleAvatar(
                        backgroundImage : AssetImage('assets/men.jpg' ,),
                        radius: 22,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Discover Best\nSuitable Property',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: height * .01,
                ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                         Container(
                  height: height * .05,
                  width: width * .25,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 6, 56, 82),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Center(child: Text('House' , style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,),)),
                      ),
          
                      SizedBox(
                          width: width * .02,
                        ),
          
                                Container(
                  height: height * .05,
                  width: width * .32,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 200, 227, 241),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Center(child: Text('Apartment' , style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromARGB(255, 6, 56, 82),),)),
                      ),
          
                      SizedBox(
                          width: width * .02,
                        ),
                           Container(
                  height: height * .05,
                  width: width * .2,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 200, 227, 241),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Center(child: Text('Flat' , style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromARGB(255, 6, 56, 82),),)),
                      ),
          
                      SizedBox(
                          width: width * .02,
                        ),
                               Container(
                  height: height * .05,
                  width: width * .21,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 200, 227, 241),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Center(child: Text('Land' , style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromARGB(255, 6, 56, 82),),)),
                      ),
          
                      SizedBox(
                          width: width * .02,
                        ),
          
          
                      
                      ],
                    ),
                  ),
                  SizedBox(
                  height: height * .01,
                ),
                const Text(
                  'Best for you',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 6, 56, 82),
                      fontWeight: FontWeight.w600),
                ),
                
                
                 SizedBox(
                  height: height * .02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Expanded(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
                          },
                          child: Container(
                            height: height * .4,
                            width: width * .8,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 185, 224, 244),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                            child: Stack(
                              children: [
                                Positioned(
                                    child: Container(
                                 
                                  height: height * .25,
                                  width: width * .8,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 254, 183, 59),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(14),
                                          topLeft: Radius.circular(14))),
                                 child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(14),
                                          topLeft: Radius.circular(14)),
                                  child: Image(image: AssetImage('assets/pic4.jpeg') ,fit: BoxFit.cover, )),
                                )),
                                Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: height * .15,
                                      width: width * .8,
                                      
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 4, 44, 65),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(14),
                                              bottomRight: Radius.circular(14))),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: height * .025,
                                            horizontal: width * .05),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'CRAFTSMAN HOUSE',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            const Text('520 N Beaudry Ave, Los Angeles',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 225, 222, 222))),
                                            SizedBox(
                                              height: height * .005,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.bed,
                                                  color: Color.fromARGB(
                                                      255, 238, 221, 68),
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: width * .02,
                                                ),
                                                Text(
                                                  '4 Beds',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromARGB(
                                                          255, 225, 222, 222),
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: width * .04,
                                                ),
                                                const Icon(
                                                  Icons.bathtub,
                                                  color: Color.fromARGB(
                                                      255, 238, 221, 68),
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: width * .02,
                                                ),
                                                Text(
                                                  '4 Baths',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromARGB(
                                                          255, 225, 222, 222),
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: width * .04,
                                                ),
                                                const Icon(
                                                  Icons.car_rental,
                                                  color: Color.fromARGB(
                                                      255, 238, 221, 68),
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: width * .02,
                                                ),
                                                Text(
                                                  '1 Garage',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromARGB(
                                                          255, 225, 222, 222),
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: width * .04,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .035,
                        ),
                        Container(
                          height: height * .4,
                          width: width * .8,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 185, 224, 244),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                height: height * .25,
                                width: width * .8,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(14),
                                        topLeft: Radius.circular(14))),
                                        child: const ClipRRect(
                                borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(14),
                                        topLeft: Radius.circular(14)),
                                child: Image(image: AssetImage('assets/pic1.jpg') ,fit: BoxFit.cover, )),
                              )),
                              Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: height * .15,
                                    width: width * .8,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 4, 44, 65),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(14),
                                            bottomRight: Radius.circular(14))),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: height * .025,
                                          horizontal: width * .05),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'LAWYER HOUSE',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                          const Text('23 A boulevard, Los Angeles',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 225, 222, 222))),
                                          SizedBox(
                                            height: height * .005,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.bed,
                                                color: Color.fromARGB(
                                                    255, 238, 221, 68),
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: width * .02,
                                              ),
                                              const Text(
                                                '3 Beds',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 225, 222, 222),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: width * .04,
                                              ),
                                              const Icon(
                                                Icons.bathtub,
                                                color: Color.fromARGB(
                                                    255, 238, 221, 68),
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: width * .02,
                                              ),
                                              const Text(
                                                '2 Baths',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 225, 222, 222),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: width * .04,
                                              ),
                                              const Icon(
                                                Icons.car_rental,
                                                color: Color.fromARGB(
                                                    255, 238, 221, 68),
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: width * .02,
                                              ),
                                              const Text(
                                                '1 Garage',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 225, 222, 222),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: width * .04,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .02,
                ),
                const Text(
                  'Nearby your Location',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 6, 56, 82),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: height * .01,
                ),
                Container(
                  height: height * .13,
                  width: width * .8,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 200, 227, 241),
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  child: Row(
                    children: [
                      Container(
                        height: height * .14,
                        width: width * .25,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14))),
                         child: const ClipRRect(
                                borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(14),
                                        topLeft: Radius.circular(14)),
                                child: Image(image: AssetImage('assets/pic5.jpeg') ,fit: BoxFit.cover, )),
                      
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * .025, horizontal: width * .05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'RANCH HOUSE',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: height * .01,
                            ),
                            const Text('520 N Beaudry Ave, Los Angeles',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87)),
                            SizedBox(
                              height: height * .01,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.bed,
                                  color: Color.fromARGB(146, 138, 126, 9),
                                  size: 15,
                                ),
                                SizedBox(
                                  width: width * .01,
                                ),
                                const Text(
                                  '4 Beds',
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                const Icon(
                                  Icons.bathtub,
                                  color: Color.fromARGB(146, 138, 126, 9),
                                  size: 15,
                                ),
                                SizedBox(
                                  width: width * .01,
                                ),
                                const Text(
                                  '4 Baths',
                                  style: TextStyle(
                                      fontSize: 8,
                                       color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                const Icon(
                                  Icons.car_rental,
                                  color: Color.fromARGB(146, 138, 126, 9),
                                  size: 15,
                                ),
                                SizedBox(
                                  width: width * .01,
                                ),
                                const Text(
                                  '1 Garage',
                                  style: TextStyle(
                                      fontSize: 8,
                                       color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                  SizedBox(
                  height: height * .01,
                ),
              ],
            ),
          ),
        ),
      ),
    
    bottomNavigationBar: 
    Theme(
        data: ThemeData(
          canvasColor: Color.fromARGB(255, 6, 56, 82),
        ),
    child : BottomNavigationBar(items: [
      
      BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.white,), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.search , color: Colors.white,), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.bookmark_add_outlined , color: Colors.white,), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined , color: Colors.white,), label: "Home"),
    ]),
    ), );
  }
}
