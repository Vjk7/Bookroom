import 'package:flutter/material.dart';
class highlights extends StatelessWidget {
  const highlights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  width: MediaQuery.of(context).size.width*0.04,
                ),
                Text("Highlights", style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 45,
                ),),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.20,
                ),
                IconButton(onPressed:(){}, icon:Icon(Icons.edit),color: Colors.white, iconSize: 36,)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,),
            tweets(),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,),
            tweets(),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,),
            tweets(),


    ]
        ),
      ),
    );


  }
}
bool t=true;

class tweets extends StatefulWidget {
  const tweets({Key? key}) : super(key: key);

  @override
  State<tweets> createState() => _tweetsState();
}

class _tweetsState extends State<tweets> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0,0.0),
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: SizedBox(
            width: double.infinity,
            height: 215,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)
                               ),
                        child: CircleAvatar(
                          radius:MediaQuery.of(context).size.width*0.05,
                          backgroundImage: AssetImage("lib/assets/image/profile.png"),


                        ),
                      ),
                    ),
                    Text("UserId",style: TextStyle(
                      fontFamily: "Railway",
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    ),)
                  ],
                ),
                Padding(padding: EdgeInsets.all(10),
                child:Text("\"Highlighted Quotes\"",style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("\- Author",style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),),
                    ),
                  ],
                ),
                Row(

                  children: [
                    SizedBox(width:MediaQuery.of(context).size.width*0.62 ,),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child:IconButton(
                          icon: Icon(Icons.share,color: Color(0xffFF4949),),
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child:IconButton(
                      icon: Icon(!t?Icons.bookmark_outlined:Icons.bookmark_outline_sharp,color: Color(0xffFF4949),),
                            onPressed: () {
                              setState(() {
                                t = !t;
                              }
                              );
                            }),
                           ),

                  ],
                ),

              ],
            ) ,
          ),
        ),
      ),
    );
  }
}





