import '../../../core/app_export.dart';

/// This class defines the variables used in the [payment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentModel {
  Rx<List<String>> radioList =
      Rx(["lbl_enter_upi_id", "lbl_net_banking", "msg_pay_later_with_mandate"]);
}
