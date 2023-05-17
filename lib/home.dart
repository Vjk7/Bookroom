import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'privew.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

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
                Text("BookRoom", style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 45,
                ),),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.19,
                ),
                IconButton(onPressed:(){}, icon:Icon(Icons.bookmark),color: Colors.white, iconSize: 40,)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ad_row(img1: "lib/assets/image/ad1 (1).jpeg", img2: "lib/assets/image/ad1 (2).jpeg"),
                  ad_row(img1: "lib/assets/image/ad1 (3).jpeg", img2: "lib/assets/image/ad1 (4).jpeg"),



                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,),

               Row(
                 children: [
                   Padding(
                    padding: EdgeInsets.fromLTRB(30, 0.0, 0.0, 15.0),
                    child: Text("Recently Read",
                      style: TextStyle(
                          color: Colors.white70,
                          fontFamily: "Railway",
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
              ),
                 ],
               ),

            Container(

              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.04,),
                    b_list(image: "lib/assets/image/attitude_is_every.jpg", name: "BOOK Tittle"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.04,),
                    b_list(image: "lib/assets/image/attitude_is_every.jpg", name: "BOOK Tittle"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.04,),
                    b_list(image: "lib/assets/image/attitude_is_every.jpg", name: "BOOK Tittle"),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}


class b_list extends StatelessWidget {


  const b_list({Key? key, required this.image, required this.name}) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 0,0.0),
      child: Container(

        child:Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
          ),
          child:
          InkWell(
            child: SizedBox(
              width: double.infinity,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child:
                    Image.asset(image),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(name,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0.0, 8, 20),
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
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> preview()));
            },
          ),

        ),

       ),
    );
  }
}



class ad_row extends StatelessWidget {
  const ad_row({Key? key, required this.img1, required this.img2}) : super(key: key);
  final String img1;
  final String img2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*0.02,),
        ad(img: img1),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.02,),
        ad(img: img2),
      ],
    );
  }
}

class ad extends StatelessWidget {
  const ad({Key? key, required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff222831),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: 180,
        height: 100,
        child: InkWell(child: Image.asset(img, fit: BoxFit.fill,),
          onTap: (){},),




      ),
    );
  }
}





