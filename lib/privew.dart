import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'interacts.dart';
class preview extends StatelessWidget {
  const preview({Key? key}) : super(key: key);

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
                    width: MediaQuery.of(context).size.width*0.04,
                  ),
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new),color: Colors.white, iconSize: 30,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.02,
                  ),
                  Text("BookTittle", style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 45,
                  ),),

                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    b_list(img:"lib/assets/image/book3.png", rating: "4.0", coins: "200",),

                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.02,),

                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)
                                ),
                                color:  Color(0xffFD841F),
                                child:SizedBox(
                                  width: 160,
                                  height: 60,
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    borderRadius:BorderRadius.circular(15.0) ,
                                    child: Center(
                                      child: Text("Read",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontFamily: "Poppins"
                                      ),),
                                    ),
                                  ),
                                ),

                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)
                                ),
                                color:  Color(0xff3E6D9C),
                                child:SizedBox(
                                  width: 160,
                                  height: 60,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> interact()));
                                    },
                                    borderRadius:BorderRadius.circular(15.0) ,
                                    child: Center(
                                      child: Text("Interact",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "Poppins"
                                      ),),
                                    ),
                                  ),
                                ),

                              ),
                            ],
                          ),
                        ),


                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class b_list extends StatelessWidget {
  const b_list({Key? key, required this.img, required this.rating, required this.coins}) : super(key: key);
  final String img;
  final String rating;
  final String coins;

  @override
  Widget build(BuildContext context) {
    return Container(

      child:Card(
        color: Color(0xff34363d),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
            width: 350,
            height: 550,
            child: Column(
              children: [
                SizedBox(height: 15,),
                Container(
                  width: 280,
                  height: 400,
                  child: Image.asset(img,fit: BoxFit.fill,),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.03,),



                Padding(
                  padding: EdgeInsets.fromLTRB(45.0, 10.0, 0.0, 0.0),
                  child: Row(
                    children: [
                      Text(rating,style: TextStyle(
                        color: Colors.white70,
                        fontSize: 40
                      ),),

                      Padding(
                          padding: EdgeInsets.fromLTRB(2.0,0,0,0),
                          child: Icon(Icons.star, color: Color(0xffFF4949),size: 30,)),

                      Padding(
                          padding: EdgeInsets.fromLTRB(60.0, 10.0, 0.0, 0.0),
                           child: Row(
                                   children: [
                                        Text( coins,style: TextStyle(
                                                 color: Colors.white70,
                                                      fontSize: 40
                                              ),),

                                                     Padding(
                                                    padding: EdgeInsets.fromLTRB(2.0,0,0,0),
                                                           child: Icon(Icons.circle, color: Color(
                                                               0xffffb140),size: 30,)),




                    ],
                  ),
                )

              ],
            )



        ),
    ]

      ),

    ))
    );
  }
}






