import 'package:flutter/material.dart';
import 'main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'privew.dart';

class interact extends StatefulWidget {
  const interact({Key? key}) : super(key: key);

  @override
  State<interact> createState() => _interactState();
}

class _interactState extends State<interact> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(


            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.10,
              ),

              Row(

                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.03,
                  ),
                  IconButton(onPressed:(){
                    Navigator.pop(context);
                  }, icon:Icon(Icons.arrow_back_ios_new),color: Colors.white, iconSize: 30,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.03,
                  ),
                  Text("Interact", style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 45,
                  ),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.19,
                  ),
                  IconButton(onPressed:(){}, icon:Icon(Icons.group),color: Colors.white, iconSize: 40,)
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.08,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    c_av(),

                  ],
                ),
              ),



      ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              color: Color(0xff222831),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Stack(
                  children:[  CircleAvatar(
                        backgroundColor: Color(0xff333c4b),

                        radius:MediaQuery.of(context).size.width*0.06,
                        child:Padding(
                          padding: EdgeInsets.fromLTRB(2.0, 4.0, 15.0, 10.0),
                          child: IconButton(onPressed: (){},
                          icon: Icon(Icons.close_rounded,color: Colors.white70,size: 30,),),



                    ),


                  ),

                  ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Stack(
                  children:[ CircleAvatar(
                    radius:MediaQuery.of(context).size.width*0.09,
                    backgroundColor: Color(0xffFF4949),
                    child:  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius:MediaQuery.of(context).size.width*0.08,
                      child:Padding(
                        padding: EdgeInsets.fromLTRB(4.0, 8.0, 10.0, 8.0),
                        child: IconButton(onPressed: (){
                          setState(() {
                            t=!t;
                          });
                        },icon: Icon(!t?Icons.mic_off:Icons.mic,color: Color(0xffFF4949),size: 40,),),
                      )


                    ),


                  ),

                  ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              color: Color(0xff222831),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Stack(
                  children:[  CircleAvatar(
                    backgroundColor: Color(0xff333c4b),

                    radius:MediaQuery.of(context).size.width*0.06,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(2.0, 4.0, 15.0, 10.0),
                      child: IconButton(onPressed: (){},
                        icon: Icon(Icons.group_rounded,color: Colors.white70,size: 30,),),



                    ),


                  ),

                  ]
              ),
            ),
          ),
        ],
      ),
    );

  }
}
bool t =true;
class c_av extends StatelessWidget {
  const c_av({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Stack(
                  children:[ CircleAvatar(
                    radius:MediaQuery.of(context).size.width*0.09,
                    backgroundImage: AssetImage("lib/assets/image/profile.png"),


                  ),
                    Positioned(
                        right: 0,
                        bottom:0,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)
                            ),
                            color:  Colors.white,
                            child:Container(
                                width: MediaQuery.of(context).size.width*0.08,
                                height: MediaQuery.of(context).size.height*0.04,
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.volume_off,color: Color(0xffFF4949),))
                            )
                        ))
                  ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Stack(
                  children:[ CircleAvatar(
                    radius:MediaQuery.of(context).size.width*0.09,
                    backgroundColor: Color(0xff9CFF2E),
                    child:  CircleAvatar(
                      radius:MediaQuery.of(context).size.width*0.08,
                      backgroundImage: AssetImage("lib/assets/image/profile.png"),


                    ),


                  ),

                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}



