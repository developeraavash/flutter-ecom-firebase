<!-- Sizes  -->
class TSize {
  // padding and margin size
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  // Icon Size

  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;

  // FontSize
  static const double fontSizeSm = 14.0;
  static const double fontSizeMd = 16.0;
  static const double fontSizeLg = 18.0;

  // Button Size

  static const double buttonHeight = 18.0;
  static const double buttonRadius = 12.0;
  static const double buttonWidth = 120.0;
  static const double buttonElevation = 4.0;

  // AppBar Height
  static const appBarHeight = 56.0;

  // Icon size
  static const double imageThumbSize = 80.0;

  // Deafult space between sections

  static const double defaultSize = 24.0;
  static const double spaceBtnItems = 16.0;
  static const double spaceBtnSections = 32.0;

  // Border Radius
  static const double borderRadiusSm = 4.0;
  static const double borderRadiusMd = 8.0;
  static const double borderRadiusLg = 12.0;

  // Divider Height
  static const double dividerHeight = 1.0;

  // Product Items dimesions

  static const double productImageSize = 120.0;
  static const double productImageRadius = 16.0;
  static const double productImageHeight = 160.0;

  // Input Feild

  static const double inputFeildRadius = 12.0;
  static const double spaceBtnInputFeilds = 16.0;

  // CardSize

  static const double cardRadiusLg = 16.0;
  static const double cardRadiusMd = 12.0;
  static const double cardRadiusSm = 10.0;
  static const double cardRadiusXs = 6.0;
  static const double cardElecation = 2.0;

  // imageCarousalHeight
  static const double imageCarousalHeight = 200;

  // Loading indicator size
  static const double loadingIndicatorSize = 36.0;

  // Grid View Spacng
  static const double gridViewSpacing = 16;
}


<!-- Images -->
!Bug

class TImages {
  // App Logos
  static const String darkAppLogo = "assets/logos/";
  static const String lightAppLogo = "assets/logos/";

  // Social Logos
  static const String google = "assets/logos/";
  static const String facebook = "assets/logos/";
}


<!-- OnBoardingText -->


class TText {
  // onBoardingTitle1
  static const String onBoardingTitle1 = "Browse our exclusive products";
  static const String onBoardingTitle2 = "Pick your preferred payment method";
  static const String onBoardingTitle3 = "Enjoy hassle-free doorstep delivery";

  // onBoardingSubtitle1
  static const String onBoardingSubtitle1 =
      "Explore a wide variety of products to suit your needs";
  static const String onBoardingSubtitle2 =
      "Choose a convenient payment option for you";
  static const String onBoardingSubtitle3 =
      "Get your order delivered to your door with ease";

  static const String homeAppBarTitle = "Shopping made easy";
  static const String homeAppBarSubTitle = "Welcome, Aavash Paudel!";
}



<!-- Enums -->

enum TextStyle { small, medium, large }

enum OrderStatus { processing, shipped, delivered }

enum PaymentMethod {
  esewa,
  khalti,
  googlePay,
  applePay,
  visa,
  masterCard,
  creditCard,
  paytm,
  razorPay,
}


<!-- API all the Screts Key will stored here -->

class ApiConstant {
  static const String tSecretApiKey = "";
}



<!--  Pricing Calc -->

// 

class TPricingCalculator {
  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.13;
  }

  static double getShippingCost(String location) {
    return 120;
  }
}
