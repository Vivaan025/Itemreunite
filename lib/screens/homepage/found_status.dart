// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// class FoundStatus extends StatefulWidget {
//   FoundStatus(this.foundid);
//   final String foundid;
//   @override
//   _FoundStatusState createState() => _FoundStatusState(foundid);
// }

// class _FoundStatusState extends State<FoundStatus> {
//   String foundid;
//   List<DocumentSnapshot> reportData = []; // To store fetched data

//   _FoundStatusState(this.foundid);

//   @override
//   void initState() {
//     super.initState();
//     print('name :$foundid');
//     fetchReports();
//   }

//   // Function to fetch report data
//   void fetchReports() async {
//     try {
//       QuerySnapshot snapshot = await FirebaseFirestore.instance
//           .collection("claimReport")
//           .where('foundReportNo', isEqualTo: foundid)
//           .get();
//       setState(() {
//         reportData = snapshot.docs;
//       });
//     } catch (error) {
//       print("Error fetching reports: $error");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.arrow_back),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                   SizedBox(
//                     width: 5.0,
//                   ),
//                   Text(
//                     "Found Status",
//                     style:
//                         TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 15.0,
//               ),
//               reportData.isEmpty
//                   ? Center(
//                       child: Text(
//                         "No Reports",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),
//                       ),
//                     )
//                   : 
//               Expanded(
//                       child: ListView.builder(
//                         padding: const EdgeInsets.all(10),
//                         itemCount: 5,
//                         itemBuilder: (BuildContext context, int index) {
//                           DocumentSnapshot ds = reportData[index];
//                           return Padding(
//                             padding: const EdgeInsets.only(bottom: 0),
//                             child: Card(
//                               elevation: 3,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(6.0),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(16),
//                                 child: Row(
//                                   children: [
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Expanded(
//                                       flex: 4,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "${ds['itemName']}",
//                                             // "Earphones",
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 20,
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             height: 10,
//                                           ),
//                                           Text(
//                                             "${ds['itemDescription']}\nClaim by : ${ds['claimBy']}",
//                                             // "Jbl Earphones blue colour"
//                                           ),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Chip(
//                                             label: Text("${ds['itemCategory']}"),
//                                             // label: Text("UGHHHHH"),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Expanded(
//                                       flex: 1,
//                                       child: Container(),
//                                     ),
//                                     MaterialButton(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(6)),
//                                       color:
//                                           Theme.of(context).colorScheme.secondary,
//                                       padding: EdgeInsets.all(10),
//                                       elevation: 3,
//                                       onPressed: () {},
//                                       child: Text(
//                                         'Contact',
//                                         style: TextStyle(color: Colors.white),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FoundStatus extends StatefulWidget {
  FoundStatus(this.foundid);
  final String foundid;
  @override
  _FoundStatusState createState() => _FoundStatusState(foundid);
}

class _FoundStatusState extends State<FoundStatus> {
  String foundid;
  List<DocumentSnapshot>? reportData = []; // To store fetched data

  _FoundStatusState(this.foundid);

  @override
  void initState() {
    super.initState();
    print('name :$foundid');
    fetchReports();
  }

  // Function to fetch report data
  void fetchReports() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection("claimReport")
          .where('foundReportNo', isEqualTo: foundid)
          .get();
      setState(() {
        reportData = snapshot.docs;
      });
    } catch (error) {
      print("Error fetching reports: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Found Status",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              reportData == null || reportData!.isEmpty
                  ? Center(
                      child: Text(
                        "No Reports",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(10),
                        itemCount: reportData!.length,
                        itemBuilder: (BuildContext context, int index) {
                          DocumentSnapshot ds = reportData![index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 0),
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${ds['itemName']}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "${ds['itemDescription']}\nClaim by : ${ds['claimBy']}",
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Chip(
                                            label: Text("${ds['itemCategory']}"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(),
                                    ),
                                    MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      color:
                                          Theme.of(context).colorScheme.secondary,
                                      padding: EdgeInsets.all(10),
                                      elevation: 3,
                                      onPressed: () {},
                                      child: Text(
                                        'Contact',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
