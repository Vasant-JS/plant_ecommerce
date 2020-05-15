import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/BestSellingModel.dart';
import 'package:flutter_ecommerce/model/TopCategoryModel.dart';
import 'package:flutter_ecommerce/model/TrendingModel.dart';
import 'package:flutter_ecommerce/data/data.dart';

class Home extends StatefulWidget {
@override
_HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  List<TrendingModel> trendingData = new List();
  List<BestSellingModel> bestSellingData = new List();
  List<TopCategoryModel> topCategoryData = new List();

  @override
  void initState() {
    trendingData = getTrendingData();
    bestSellingData = getBestSellingData();
    topCategoryData = getTopCategoryModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Material(
                  elevation: 4,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),

                    height: 55,
                    child: Row(children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(width: 16,
                      ),
                      InkWell(
                          onTap: (){
                            print("you clicked search icon");
                          },
                          child: Icon(Icons.search))
                    ],),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: <Widget>[
                    Text("Todays Trending", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Color(0xff000000)),),
                    SizedBox(
                      width: 8,
                    ),
                    Text("20th May", style: TextStyle(color: Colors.grey),)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 190,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingData.length,
                      itemBuilder: (context, index){
                        return TrendingTile(
                          imgAssetPath: trendingData[index].imgAssetPath,
                          price: trendingData[index].price,
                          productName: trendingData[index].productName,
                          storeName: trendingData[index].storeName,
                          starRating: trendingData[index].starRating,
                          noOfPeopleRated: trendingData[index].noOfPeopleRated,
                        );
                      }
                  ),
                ),
                SizedBox(
                  height:35,
                ),
                Row(
                  children: <Widget>[
                    Text("Best Selling", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Color(0xff000000)),),
                    SizedBox(
                      width: 8,
                    ),
                    Text("This week", style: TextStyle(color: Colors.grey),),
                    Spacer(),
                    Text("See all",
                        style: TextStyle( color: Color(0xff557AC7),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 220,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: bestSellingData.length,
                      itemBuilder: (context, index){
                        return BestSellingTile(
                          imageAssetPath: bestSellingData[index].imageAssetPath,
                          price: bestSellingData[index].price,
                          title: bestSellingData[index].title,
                          starRating: bestSellingData[index].starRating,
                          noOfPeopleRated: bestSellingData[index].noOfPeopleRated,
                        );
                      }
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Top Categories", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Color(0xff000000)),),
                    Text("See all",
                    style: TextStyle(
                      color: Color(0xff557AC7),
                    ),),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: topCategoryData.length,
                          itemBuilder: (context,index){
                            return TopCategoriesTile(
                              imgAssetpath: topCategoryData[index].imgAssetpath,
                              color1: topCategoryData[index].color1,
                              color2: topCategoryData[index].color2,
                              label: topCategoryData[index].label,
                            );
                          }
                        ),
                    ],
                  ),
                )
              ],),
          ),
        ),
      ),
    );
  }
}


/// Trending tile
class TrendingTile extends StatelessWidget {

  String imgAssetPath;
  String price;
  String productName;
  String storeName;
  int starRating;
  int noOfPeopleRated;

  TrendingTile({this.noOfPeopleRated,this.starRating, this.storeName, this.productName, this.price, this.imgAssetPath});


  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(3),
      shadowColor: Colors.grey.withOpacity(0.2),
      child: Container(
        height: 170,
        margin: EdgeInsets.only(right: 30),
        padding: EdgeInsets.only(right: 16),
        child: Row(children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset(imgAssetPath, height: 170,width: 130,  fit: BoxFit.cover,),
                Container(
                  margin: EdgeInsets.only(left: 8, top: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [ const Color(0xff8EA2FF).withOpacity(0.5), const Color(0xff557AC7).withOpacity(0.5) ]
                      )
                  ),
                  width: 50,
                  child: Text(price, style: TextStyle(color: Colors.white),),
                )
              ],),
          ),

          SizedBox(
            width: 17,
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical:16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(productName, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                SizedBox(height: 4,),
                Text(storeName, style: TextStyle(fontSize: 16, color: Colors.black38),),
                SizedBox(height: 8,),
                Row(children: <Widget>[
                  RatingStars(starRating: starRating,),
                  SizedBox(width: 8,),
                  Text("($noOfPeopleRated)", style: TextStyle(fontSize: 15, color: Colors.black38),)
                ],),

                SizedBox(
                  height: 16,
                ),


                // Button
                GestureDetector(
                  onTap: (){
                    print("you clicked me");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical:  11),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),

                        gradient: LinearGradient(
                            colors: [const Color(0xff8EA2FF), const Color(0xff557AC7)]
                        )
                    ),
                    child: Text("Add to cart", style: TextStyle(
                        color: Colors.white, fontSize: 16
                    ),),
                  ),
                )

              ],),)
        ],),
      ),
    );
  }
}


class RatingStars extends StatelessWidget {

  int starRating;
  double ht;
  RatingStars({this.starRating, this.ht});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(children: <Widget>[
        Image.asset(starRating >= 1 ? "assets/star.png": "assets/stargrey.png", height: ht ?? 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating >= 2 ?"assets/star.png": "assets/stargrey.png", height: ht ?? 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating >= 3 ? "assets/star.png": "assets/stargrey.png", height: ht ?? 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating >= 4 ? "assets/star.png" : "assets/stargrey.png", height: ht ?? 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating == 5 ? "assets/star.png" : "assets/stargrey.png", height: ht ?? 15,),

      ],),
    );
  }
}

class BestSellingTile extends StatelessWidget {

  final String imageAssetPath;
  final String price;
  final String title;
  final int starRating;
  final int noOfPeopleRated;

  BestSellingTile({
    this.noOfPeopleRated,
    this.title,
    this.price,
    this.imageAssetPath,
    this.starRating
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(imageAssetPath,height: 150,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  gradient: LinearGradient(colors: [
                    const Color(0xff8EA2FF).withOpacity(0.5),
                    const Color(0xff557AC7).withOpacity(0.5),
                  ])
                ),
                margin: EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(price),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(title),
          Row(
            children: <Widget>[
              RatingStars(starRating: starRating, ht: 10.0,),
              SizedBox(width:15),
              Text("($noOfPeopleRated)"),
            ],
          ),
        ],
      )
    );
  }
}

class TopCategoriesTile extends StatelessWidget {

  final String label;
  final String color1;
  final String color2;
  final String imgAssetpath;

  TopCategoriesTile({this.color1,this.color2,this.imgAssetpath, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 12.0),
                padding: EdgeInsets.all(8.0),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                        colors: [
                          Color(int.parse("0xff$color1")),
                          Color(int.parse("0xff$color2")),
                        ]
                    )
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                child: Image.asset(imgAssetpath,height: 50,),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text(label),
        ],
      ),
    );
  }
}
