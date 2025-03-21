# <!-- Sizes  -->

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


<!--THttpHelper http-client  -->


import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper {
static const String _baseUrl = '';

// Helper method to make get request
static Future<Map<String, dynamic>> get(String endpoint) async {
final res = await http.get(Uri.parse('$_baseUrl/$endpoint'));
return _handleResponse(res);
}

static Future<Map<String, dynamic>> post(
String endpoint,
dynamic data,
) async {
final res = await http.post(
Uri.parse('$_baseUrl/$endpoint'),
headers: {'Content-Type': 'application/json'},
body: json.encode(data),
);
return _handleResponse(res);
}

static Map<String, dynamic> _handleResponse(http.Response response) {
if (response.statusCode == 200) {
return json.decode(response.body);
} else {
throw Exception("Failed to load data: ${response.statusCode}");
}
}
}



<!-- TLocalStorage  -StorageUtility.dart -->
import 'package:get_storage/get_storage.dart';

class TLocalStorage {
static final TLocalStorage _instance = TLocalStorage._internal();

factory TLocalStorage() {
return _instance;
}

TLocalStorage._internal();

final storage = GetStorage();

// Generic method to save data
Future<void> saveDate<T>(String key, T value) async {
await storage.write(key, value);
}

// Generic method to read data
T? readData<T>(String key) {
storage.read<T>(key);
}

//Clear all data
Future<void> clearAll() async {
storage.erase();
}
}

<!-- logger.dart -->

import 'package:logger/web.dart';

class TLoggerHelper {
static final Logger _loggers = Logger(
printer: PrettyPrinter(),
level: Level.debug,
);

static void debug(String msg) {
_loggers.d(msg);
}

static void info(String msg) {
_loggers.i(msg);
}

static void warning(String msg) {
_loggers.w(msg);
}

static void error(String msg, [dynamic error]) {
_loggers.e(msg, error: error, stackTrace: StackTrace.current);
}

}




<!-- validation.dart -->

class TValidator {
static String? validateEmail(String? email) {
if (email == null || email.isEmpty) return "Email is required";
final emailRegExp = RegExp(
r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
);
if (!emailRegExp.hasMatch(email)) return "Invalid email format";
return null;
}

static String? validatePassword(String? password) {
if (password == null || password.isEmpty) return "Password is required";
final passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]
{8,}$');
if (!passwordRegExp.hasMatch(password)) return "Invalid password format. Must contain at least 8
characters, including uppercase and lowercase letters, numbers, and special characters.";
return null;
}

// validate the phone number
static String? validatePhoneNumber(String? phoneNumber) {
if (phoneNumber == null || phoneNumber.isEmpty) return "Phone number is required";
final phoneNumberRegExp = RegExp(r'^\+?[0-9]{1,3}[-. ]?[0-9]{1,14}$');
if (!phoneNumberRegExp.hasMatch(phoneNumber)) return "Invalid phone number format. Please include
country code, area code, and phone number.";
return null;
}

}

# SplashScreen

flutter_native_splash:
color: "#ffffff"
color_dark: "#272727"
image: assets/logos/DarkLogo.png
image_dark: assets/logos/DarkLogo.png

android_12:
color: "#ffffff"
color_dark: "#272727"
image: assets/logos/DarkLogo.png
image_dark: assets/logos/DarkLogo.png

web: false

- package needs to be installed flutter_native_splash: ^2.4.5

- flutter pub run flutter_native_splash:create

[//]: # (  smooth_page_indicator: ^1.2.1)


[//]: # (Login Form Implemented Sucessfully 7- 15.53)

import 'package:ecommerce_new_design/common/styles/spacing_styles.dart';
import 'package:ecommerce_new_design/common/widget/login_signup/form_divider.dart';
import 'package:ecommerce_new_design/features/authentication/screens/login/widgets/login_form.dart';
import 'package:
ecommerce_new_design/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_new_design/common/widget/login_signup/socials_btn.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
const Login({super.key});

@override
Widget build(BuildContext context) {
final dark = THelperFunc.isDarkMode(context);
return Scaffold(
body: SingleChildScrollView(
child: Padding(
padding: TSpacingStyle.paddingWithAppBarHeight,
child: Column(
children: [
// Logo Title and Subtitle
const LoginHeader(),
// Form
const LoginForm(),

              //   Divider  -orSignInWith
              FormDivider(dividerText: TText.orSignInWith.capitalize!),

              const SizedBox(height: TSize.spaceBtnSections),

              //   Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );

}
}

!



<!-- Course  Flows-->

![1](image-4.png)

![2](image-5.png)

![3](image-6.png)