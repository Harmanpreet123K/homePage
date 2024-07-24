
import 'package:digiprod/features/shop/models/category_model.dart';

import '../../../utils/constants/image_strings.dart';

class PDummyData{
  static final List<CategoryModel> categories = [
    CategoryModel(id: '1', name: 'Beauty', image: PImages.beauty, isFeatured: true),
    CategoryModel(id: '2', name: 'Fashion', image: PImages.fashion, isFeatured: true),
    CategoryModel(id: '3', name: 'Kids', image: PImages.kids, isFeatured: true),
    CategoryModel(id: '4', name: 'Men', image: PImages.men, isFeatured: true),
    CategoryModel(id: '5', name: 'Women', image: PImages.women, isFeatured: true),
  ];
}