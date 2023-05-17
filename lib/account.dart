import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int index =0;
  static const List<Widget>_widgetoption = <Widget>
  [
    b_exe(),
    B_row_exe(),
  ];
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
                  width: MediaQuery.of(context).size.width*0.03,
                ),

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius:MediaQuery.of(context).size.width*0.15,
                        backgroundImage: AssetImage("lib/assets/image/Magic (2).png"),


                      ),

                      Positioned(
                          right: 0,
                          bottom:0,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)
                            ),
                            color:  Colors.black45,
                            child:Container(
                              width: MediaQuery.of(context).size.width*0.1,
                              height: MediaQuery.of(context).size.height*0.05,
                              child: Image.asset("lib/assets/image/rank1.png",),
                            )
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.02,
                ),
                Container(
                  child: Column(
                    children: [
                      Text("User_Id", style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 40,
                      ),),

                      Row(
                        children: [
                          Text("Bio", style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Railway",
                            fontSize: 20,
                          ),),

                        ],
                      ),



                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5.0, 20, 80),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.card_giftcard_sharp,color: Color(
                      0xfff59b37),size: 30,)),
                ),
               ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,),

      Padding(
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0,0.0),
        child: Container(

          child:Card(
            color: Color(0xff393E46),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child:
            SizedBox(
              width: MediaQuery.of(context).size.width*0.85,
              height: 40,
              child: Center(
                child: Text("Edit profile",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),

          ),

        ),
      ),

            SizedBox(
              height: MediaQuery.of(context).size.height*0.01,),
            Center(
              child: Row(
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

                            radius:MediaQuery.of(context).size.width*0.08,
                            child:Padding(
                              padding: EdgeInsets.fromLTRB(2.0, 4.0, 10.0, 10.0),
                              child: IconButton(onPressed: (){},
                                icon: Icon(Icons.group_rounded,color: Colors.white70,size: 40,),),



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

                            radius:MediaQuery.of(context).size.width*0.08,
                            child:Padding(
                              padding: EdgeInsets.fromLTRB(2.0, 4.0, 10.0, 10.0),
                              child: IconButton(onPressed: (){},
                                icon: Icon(Icons.add,color: Colors.white70,size: 40,),),



                            ),


                          ),

                          ]
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.01,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0.0,20.0, 15.0),
              child: TextButton(
                onPressed: (){
                  setState(() {
                    index=0;
                  });
                },
                child: Text("AudioBooks",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "Railway",
                    fontSize: index==0?30:15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0.0, 80.0, 15.0),
              child: TextButton(
                onPressed: (){
                  setState(() {
                    index=1;
                  });
                },
                child: Text("Books",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "Railway",
                    fontSize: index==1?30:15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,),
            Container(
              child: _widgetoption.elementAt(index),
            )



          ],
        ),
      ),
    );
  }
}
class B_row_exe extends StatelessWidget {
  const B_row_exe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          book_row(img1: "lib/assets/image/book3.png", img2: "lib/assets/image/book3.png", tittle1: "BOOKTittle", tittle2: "BOOKTittle", v1: "143", v2: "254", l1: "32", l2: "56"),
          book_row(img1: "lib/assets/image/book3.png", img2: "lib/assets/image/book3.png", tittle1: "BOOKTittle", tittle2: "BOOKTittle", v1: "143", v2: "254", l1: "32", l2: "56"),
          book_row(img1: "lib/assets/image/book3.png", img2: "lib/assets/image/book3.png", tittle1: "BOOKTittle", tittle2: "BOOKTittle", v1: "143", v2: "254", l1: "32", l2: "56"),
        ],
      ),
    );
  }
}

class book_row extends StatelessWidget {
  const book_row({Key? key, required this.img1, required this.img2, required this.tittle1, required this.tittle2, required this.v1, required this.v2, required this.l1, required this.l2}) : super(key: key);
  final String img1;
  final String img2;
  final String tittle1;
  final String tittle2;
  final String v1;
  final String v2;
  final String l1;
  final String l2;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff222831),
      child:Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*0.02,
          ),
          books(img:img1, tittle: tittle1, views: v1, likes: l1),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.04,
          ),
          books(img: img2, tittle: tittle2, views: v2, likes: l2),

        ],
      )
    );
  }
}


class books extends StatelessWidget {
  const books({Key? key, required this.img, required this.tittle, required this.views, required this.likes}) : super(key: key);
  final String img;
  final String tittle;
  final String views;
  final String likes;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Card(
            color: Color(0xff34363d),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0)
            ),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
                width: 170,
                height: 300,
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Container(
                      width: 190,
                      height: 160,
                      child: Image.asset(img),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,),
                    Text(tittle, style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 25,

                    ),),


                    Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
                      child: Row(
                        children: [
                          Text(views,style: TextStyle(
                            color: Colors.white70,
                          ),),
                          Text("views",style: TextStyle(
                            color: Colors.white70,
                          ),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.1,
                          ),
                          Text(likes,style: TextStyle(
                            color: Colors.white70,
                          ),),
                          Padding(
                              padding: EdgeInsets.fromLTRB(2.0,0,0,0),
                              child: Icon(Icons.bookmarks, color: Color(0xffFF4949),size: 18,)),

                        ],
                      ),
                    )

                  ],
                )



            ),
          ),


        );

  }
}

class b_exe extends StatelessWidget {
  const b_exe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          b_list( name: "PonniyinSelvan"),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          b_list( name: "Aram"),

        ],
      ),
    );


  }
}


class b_list extends StatelessWidget {


  const b_list({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 7.0,0.0),
      child: Container(

        child:Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
          ),
          child:
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: IconButton(onPressed: (){},icon: Icon(Icons.play_arrow,size: 40,),),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Text(name,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0.0, 10, 20),
                      child: LinearPercentIndicator(
                        lineHeight: 3,
                        width: 250.0,
                        percent: 0.2,
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xffFF4949),
                      ),
                    )
                  ],
                ),
                Container(

                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
          ),

        ),

      ),
    );
  }
}









