import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digiprod/features/shop/models/category_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/exceptions/firebase_exceptions.dart';
import '../../utils/exceptions/platform_exceptions.dart';
import '../services/cloud_storage/firebase_storage_service.dart';

class CategoryRepository extends GetxController{
  static CategoryRepository get instance => Get.find();

  //Variables
  final _db = FirebaseFirestore.instance;

  //Get all categories
  Future<List<CategoryModel>> getAllCategories() async{
    try{
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list;
    }on FirebaseException catch(e){
      throw PFirebaseException(e.code).message;
    }on PlatformException catch(e) {
      throw PPlatformException(e.code).message;
    }catch(e) {
      throw 'Something went wrong.Please try again';
    }
  }

  //Get Sub Categories

  //Upload Categories to the Cloud Firestore
  Future<void> uploadDummyData(List<CategoryModel> categories) async{
    try{
      final storage = Get.put(PFirebaseStorageService());

      for(var category in categories){
        final file = await storage.getImageDataFromAssets(category.image);

        final url = await storage.uploadImageData('Categories',file,category.name);

        category.image = url;

        await _db.collection("Categories").doc(category.id).set(category.toJson());
      }
    }on FirebaseException catch(e){
      throw PFirebaseException(e.code).message;
    }on PlatformException catch(e) {
      throw PPlatformException(e.code).message;
    }catch(e) {
      throw 'Something went wrong.Please try again';
    } 
  }

}