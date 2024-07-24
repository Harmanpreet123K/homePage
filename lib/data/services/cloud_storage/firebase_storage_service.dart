import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PFirebaseStorageService extends GetxController{
  static PFirebaseStorageService get instance => Get.find();

  final _firebaseStorage = FirebaseStorage.instance;

  //Upload local assets from IDE
  //Returns a Unit8List containing image data
  Future<Uint8List> getImageDataFromAssets(String path) async{
    try{
      final byteData = await rootBundle.load(path);
      final imageData = byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
      return imageData;
    }catch(e){
      throw 'Error loading image data: $e';
    }
  } 

  //Upload image using imagedata on cloud firebase storage
  //Returns the download url of the uploaded image
  Future<String> uploadImageData(String path,Uint8List image,String name) async{
    try{
      final ref = _firebaseStorage.ref(path).child(name);
      await ref.putData(image);
      final url = await ref.getDownloadURL();
      return url;
    }catch(e){
      return _handleStorageException(e);
    }
  }

  Future<String> uploadImageFile(String path, XFile image) async{
    try{
      final ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    }catch(e){
      return _handleStorageException(e);
    }
  }

  /// Handles Firebase Storage exceptions
  String _handleStorageException(dynamic e) {
    if (e is FirebaseException) {
      throw 'Firebase Exception: ${e.message}';
    } else if (e is SocketException) {
      throw 'Network Error: ${e.message}';
    } else if (e is PlatformException) {
      throw 'Platform Exception: ${e.message}';
    } else {
      throw 'Something went wrong! Please try again';
    }
  }
}