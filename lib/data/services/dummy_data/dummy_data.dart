
import 'package:digiprod/features/shop/models/category_model.dart';

import '../../../utils/constants/image_strings.dart';

class PDummyData{
  static final List<CategoryModel> categories = [
    CategoryModel(id: '1', name: PImages.beauty, image: 'Beauty', isFeatured: true),
    CategoryModel(id: '2', name: PImages.fashion, image: 'Fashion', isFeatured: true),
    CategoryModel(id: '3', name: PImages.kids, image: 'Kids', isFeatured: true),
    CategoryModel(id: '4', name: PImages.men, image: 'Men', isFeatured: true),
    CategoryModel(id: '5', name: PImages.women, image: 'Women', isFeatured: true),
  ];
}