import '../../../core/app_export.dart';
import '../models/category_model.dart';

/// A controller class for the CategoryScreen.
///
/// This class manages the state of the CategoryScreen, including the
/// current categoryModelObj
class CategoryController extends GetxController {
  Rx<CategoryModel> categoryModelObj = CategoryModel().obs;
}
