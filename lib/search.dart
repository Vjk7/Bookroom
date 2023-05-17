import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
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
                Text("Search", style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 45,
                ),),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.40,
                ),
                IconButton(
                  onPressed: () {
                    // method to show the search bar
                    showSearch(
                        context: context,
                        // delegate to customize the search bar
                        delegate: CustomSearchDelegate()
                    );
                  },
                  icon: const Icon(Icons.search),
                  color: Colors.white, iconSize: 40,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ad(img: "lib/assets/image/Magic.png"),
                    SizedBox(width: 10,),
                    ad(img: "lib/assets/image/Magic (1).png"),
                    SizedBox(width: 10,),
                    ad(img: "lib/assets/image/Magic (2).png"),
                    SizedBox(width: 10,),
                    ad(img: "lib/assets/image/Magic (3).png")



                  ],
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0.0, 0.0, 15.0),
                  child: Text("Suggestions",
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
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    InkWell(
                      onTap: (){
                      },
                      child:
                      b_list(img: "lib/assets/image/attitude_is_every.jpg", rating: '5', tittle:"Book Tittle")
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                      },
                      child:
                      b_list(img: "lib/assets/image/attitude_is_every.jpg", rating: '4.6', tittle:"Book Tittle")
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                      },
                      child:
                      b_list(img: "lib/assets/image/attitude_is_every.jpg", rating: '3.2', tittle:"Book Tittle")
                    ),
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
  const b_list({Key? key, required this.img, required this.rating, required this.tittle}) : super(key: key);
  final String img;
  final String rating;
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Container(

      child:Card(
        color: Color(0xff34363d),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.5)
        ),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
            width: 180,
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
                      Text(rating,style: TextStyle(
                        color: Colors.white70,
                      ),),

                      Padding(
                          padding: EdgeInsets.fromLTRB(2.0,0,0,0),
                          child: Icon(Icons.star, color: Color(0xffFF4949),size: 18,)),

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
        width: 300,
        height: 160,
        child: InkWell(child: Image.asset(img, fit: BoxFit.fill,),
          onTap: (){},),




      ),
    );
  }
}


class CustomSearchDelegate extends SearchDelegate {
  // Demo list to show querying
  List<String> searchTerms = [
    "Attitude is every thing",
    "Ponniyin Selvan",
    "Aram",
    "Asuran",
    "Harry Pottor",

  ];

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchTerms) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return Container(
      color:  Color(0xff34363d),
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        },
      ),
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchTerms) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return Container(
      color:  Color(0xff222831),
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result, style: TextStyle(color: Colors.white70),),
          );
        },
      ),
    );
  }
}





