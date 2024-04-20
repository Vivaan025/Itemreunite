// import 'package:flutter/material.dart';
// import 'package:lost_and_found/model/page_model.dart';
// //import 'package:lost_and_found/screens/homepage/founder_get_started.dart';
// //import 'package:lost_and_found/screens/getstarted/founder_get_started.dart';
// import 'package:lost_and_found/screens/homepage/home_page.dart';
// import 'package:lost_and_found/screens/authentication/login_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   runApp(LostAndFound());
// }

// class LostAndFound extends StatefulWidget {
//   @override
//   _LostAndFoundState createState() => _LostAndFoundState();
// }

// class _LostAndFoundState extends State<LostAndFound> {
//   // User? user;

//   // FirebaseAuth _auth = FirebaseAuth.instance;

//   getCurrentUser() {
//     // user = _auth.currentUser!;
//     // print('user id : $user');
//   }

//   final onboardingPagesList = [
//     PageModel(
//       image: Image.asset('assets/images/try1.png'),
//       title: Text('Lost a Precious Item?'),
//       info: Text("Don't worry, we can help you find it."),
//     ),
//     PageModel(
//       image: Image.asset('assets/images/try2.png'),
//       title: Text('Found Something Precious?'),
//       info: Text('Use our app to make sure it reaches the correct owner.'),
//     ),
//     PageModel(
//       image: Image.asset('assets/images/try3.png'),
//       title: Text('Connect with each other securely'),
//       info: Text('So that '),
//     ),
//     PageModel(
//       image: Image.asset('assets/images/try4.png'),
//       title: Text('So you can Rest Easy'),
//       info: Text('Example'),
//     ),
//   ];

//   @override
//   void initState() {
//     getCurrentUser();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           fontFamily: 'ProductSans',
//           primaryColor: Color(0xff1e1e1e),
//           colorScheme:
//               ColorScheme.fromSwatch().copyWith(secondary: Color(0xffff5f6d)),
//         ),
//         //  home: ReportLostPage(),
//         // home: user != null
//         //     ? Onboarding(
//         //         proceedButtonStyle: ProceedButtonStyle(
//         //             proceedButtonRoute: (context) {
//         //               return Navigator.pushAndRemoveUntil(
//         //                 context,
//         //                 MaterialPageRoute(
//         //                   builder: (context) => HomePage(),
//         //                 ),
//         //                 (route) => false,
//         //               );
//         //             },
//         //             proceedButtonText: 'Continue'),
//         //         pages: onboardingPagesList,
//         //         indicator: Indicator(
//         //           indicatorDesign: IndicatorDesign.line(
//         //             lineDesign: LineDesign(
//         //               lineType: DesignType.line_uniform,
//         //             ),
//         //           ),
//         //         ),
//         //       )
//         //     : LoginPage(),
//         home: HomePage()
//         //home: GetStarted(),
//         );
//   }
// }
import 'dart:io';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String photoUrl = '';
  String emailAddress = '';

  TextEditingController _fullName = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController emailController = TextEditingController();
  //TextEditingController _ = TextEditingController();
  //TextEditingController _phone = TextEditingController();

  @override
  void initState() {
    super.initState();
    // FirebaseFirestore.instance
    //     .collection("users")
    //     .doc(FirebaseAuth.instance.currentUser?.uid)
    //     .get()
    //     .then((snapshot) {
    //   setState(() {
    //     photoUrl = snapshot.data()?['profilePhoto'];
    //     _fullName.text = snapshot.data()?['fullName'];
    //     _phoneNumber.text = snapshot.data()?['phoneNo'];
    //     emailAddress = snapshot.data()?['emailAddress'];
    //   });
    // });
  }

  // Future<void> addProfilePhoto() async {
  //   final _firebaseStorage = FirebaseStorage.instance;
  //   final _imagePicker = ImagePicker();

  //   var randomInt = Random.secure().nextInt(10000);

  //   PickedFile image;
  //   //Check Permissions
  //   await Permission.photos.request();

  //   var permissionStatus = await Permission.photos.status;

  //   if (permissionStatus.isGranted) {
  //     //Select Image
  //     image = (await _imagePicker.getImage(source: ImageSource.gallery))!;
  //     var file = File(image.path);

  //     if (image != null) {
  //       //Upload to Firebase
  //       var snapshot = await _firebaseStorage
  //           .ref()
  //           .child('profilePhoto')
  //           .child("$randomInt")
  //           .putFile(file);
  //       var downloadUrl = await snapshot.ref.getDownloadURL();
  //       setState(() {
  //         photoUrl = downloadUrl;
  //       });
  //     } else {
  //       print('No Image Path Received');
  //     }
  //   } else {
  //     print('Permission not granted. Try Again with permission access');
  //   }
  // }

  // Future<void> saveChanges() async {
  //   await FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(FirebaseAuth.instance.currentUser?.uid)
  //       .update({
  //     "fullName": _fullName.text,
  //     "profilePhoto": photoUrl,
  //     "phoneNumber": _phoneNumber.text
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Colors.teal,
                  //   radius: 80,
                  //   child: photoUrl != ''
                  //       ? Image.network(
                  //           photoUrl,
                  //         )
                  //       : Container(
                  //           child: Text(
                  //             "Upload",
                  //           ),
                  //         ),
                  // ),
                  photoUrl != ''
                      ? Container(
                          height: 150,
                          width: 150,
                          child: ClipOval(
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: photoUrl,
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              color: Colors.teal, shape: BoxShape.circle),
                          height: 150,
                          width: 150,
                          child: Center(
                              child: Text(
                            "Upload Photo",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          )),
                        ),
                  SizedBox(
                    height: 8.0,
                  ),
                  InkWell(
                    onTap: () {
                      // addProfilePhoto();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add / Edit photo",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15.0),
                        ),
                        IconButton(
                            icon: Icon(Icons.add_a_photo), onPressed: () {})
                      ],
                    ),
                  ),
                  Divider(),

                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "Email Address: ",
                          style: TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                        Text(
                          emailAddress,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      controller: _fullName,
                      //obscureText: true,
                      keyboardType: TextInputType.text,
                      cursorColor: Theme.of(context).colorScheme.secondary,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary,),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      controller: _phoneNumber,
                      //obscureText: true,
                      keyboardType: TextInputType.number,
                      cursorColor: Theme.of(context).colorScheme.secondary,

                      decoration: InputDecoration(
                        prefix: Container(
                          child: Text("+91 - ",
                              style: TextStyle(color: Colors.black54)),
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary,),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () async {
                  // await saveChanges();
                  Fluttertoast.showToast(msg: "Changes has been saved");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: 60,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    "Save changes",
                    style: TextStyle(
                        fontSize: 18.0,
                        //fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
