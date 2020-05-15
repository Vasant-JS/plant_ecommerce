import 'package:flutter_ecommerce/model/BestSellingModel.dart';
import 'package:flutter_ecommerce/model/TopCategoryModel.dart';
import 'package:flutter_ecommerce/model/TrendingModel.dart';

List<TrendingModel> getTrendingData(){

  List<TrendingModel> trendingData = new List();
  TrendingModel trendingModel = new TrendingModel();

  //1
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 1";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating = 4;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //2
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 2";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating =5;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //3
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 3";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating = 3;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //4
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 4";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating = 3;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();


  return trendingData;

}

List<BestSellingModel> getBestSellingData(){
  List<BestSellingModel> bestSellingData = new List();
  BestSellingModel bestSellingModel = new BestSellingModel();

  //1
  bestSellingModel.imageAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated = 444;

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //2
  bestSellingModel.imageAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated = 444;

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //3
  bestSellingModel.imageAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated = 444;

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //4
  bestSellingModel.imageAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated = 444;

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //2
  bestSellingModel.imageAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated = 444;

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //3
  bestSellingModel.imageAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated = 444;

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //4
  bestSellingModel.imageAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated = 444;

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();


  return bestSellingData;
}

List<TopCategoryModel> getTopCategoryModel(){
  List<TopCategoryModel> topCategories = new List();
  TopCategoryModel topCategoryModel = new TopCategoryModel();

  //1
  topCategoryModel.imgAssetpath = "assets/categorie.png";
  topCategoryModel.color1 = "8EA2FF";
  topCategoryModel.color2 = "557AC7";
  topCategoryModel.label = "Regular Gift";

  topCategories.add(topCategoryModel);
  topCategoryModel = new TopCategoryModel();

  //2
  topCategoryModel.imgAssetpath = "assets/boxgift.png";
  topCategoryModel.color1 = "50F9B4";
  topCategoryModel.color2 = "38CAE9";
  topCategoryModel.label = "Box Gift";

  topCategories.add(topCategoryModel);
  topCategoryModel = new TopCategoryModel();

  //3
  topCategoryModel.imgAssetpath = "assets/choclate.png";
  topCategoryModel.color1 = "FFB397";
  topCategoryModel.color2 = "F46AA0";
  topCategoryModel.label = "Chocolate";

  topCategories.add(topCategoryModel);
  topCategoryModel = new TopCategoryModel();

  //1
  topCategoryModel.imgAssetpath = "assets/categorie.png";
  topCategoryModel.color1 = "8EA2FF";
  topCategoryModel.color2 = "557AC7";
  topCategoryModel.label = "Regular Gift";

  topCategories.add(topCategoryModel);
  topCategoryModel = new TopCategoryModel();

  //2
  topCategoryModel.imgAssetpath = "assets/boxgift.png";
  topCategoryModel.color1 = "50F9B4";
  topCategoryModel.color2 = "38CAE9";
  topCategoryModel.label = "Box Gift";

  topCategories.add(topCategoryModel);
  topCategoryModel = new TopCategoryModel();

  //3
  topCategoryModel.imgAssetpath = "assets/choclate.png";
  topCategoryModel.color1 = "FFB397";
  topCategoryModel.color2 = "F46AA0";
  topCategoryModel.label = "Chocolate";

  topCategories.add(topCategoryModel);
  topCategoryModel = new TopCategoryModel();

  return topCategories;

}