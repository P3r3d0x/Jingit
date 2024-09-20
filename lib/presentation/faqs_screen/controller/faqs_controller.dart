import '../../../core/app_export.dart';
import '../models/faqs_model.dart';

/// A controller class for the FaqsScreen.
///
/// This class manages the state of the FaqsScreen, including the
/// current faqsModelObj
class FaqsController extends GetxController {
  Rx<FaqsModel> faqsModelObj = FaqsModel().obs;
}
