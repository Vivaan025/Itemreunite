// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Status extends StatefulWidget {
//   final String foundReportNo;

//   const Status({required Key key, required this.foundReportNo}) : super(key: key);
//   @override
//   _StatusState createState() => _StatusState();
// }

// class _StatusState extends State<Status> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.arrow_back_ios),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 Text("Status",
//                     style:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Row(
//               children: [
//                 Text(
//                   "Report Number: ",
//                   style: TextStyle(fontSize: 13, color: Colors.black54),
//                 ),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text("#${widget.foundReportNo}",
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ],
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Expanded(
//                 child: StreamBuilder(
//               stream: FirebaseFirestore.instance
//                   .collection("foundReport")
//                   .doc(widget.foundReportNo)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (snapshot.data == null) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }

//                 return Container(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Center(
//                         child: 
//                         // snapshot.data['itemImage'] != ''
//                              Container(
//                                 margin: EdgeInsets.all(20.0),
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).colorScheme.secondary,
//                                     shape: BoxShape.circle),
//                                 height: 150,
//                                 width: 150,
//                                 child: ClipOval(
//                                   child: CachedNetworkImage(
//                                     fit: BoxFit.cover,
//                                     // imageUrl: snapshot.data['itemImage'],
//                                     placeholder: (context, url) =>
//                                         CircularProgressIndicator(),
//                                     errorWidget: (context, url, error) =>
//                                         Icon(Icons.error), imageUrl: '',
//                                   ),
//                                 ),
//                               )
//                             // : Container(
//                             //     margin: EdgeInsets.all(20.0),
//                             //     decoration: BoxDecoration(
//                             //         color: Theme.of(context).accentColor,
//                             //         shape: BoxShape.circle),
//                             //     height: 150,
//                             //     width: 150,
//                             //     child: ClipOval(
//                             //         child: Center(
//                             //             child: Text(
//                             //       "N/A",
//                             //       style: TextStyle(
//                             //           fontSize: 15,
//                             //           fontWeight: FontWeight.bold),
//                             //     ))),
//                             //   ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       // Text(
//                       //   snapshot.data['itemName'],
//                       //   style: TextStyle(
//                       //       fontSize: 20, fontWeight: FontWeight.bold),
//                       // ),
//                       // SizedBox(
//                       //   height: 10.0,
//                       // ),
//                       // Text(snapshot.data['itemDescription'],
//                       //     style:
//                       //         TextStyle(fontSize: 15, color: Colors.black54)),
//                       Divider(),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         "Founder Details",
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 30.0,
//                       ),
//                       Row(
//                         children: [
//                           Text("Founder Email: "),
//                           // Text(
//                           //   snapshot.data['createdBy'],
//                           //   style: TextStyle(
//                           //       fontSize: 15, fontWeight: FontWeight.bold),
//                           // ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       Row(
//                         children: [
//                           Text("Report Location"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 6.0,
//                       ),
//                       // Text(
//                       //   snapshot.data['reportLocation'],
//                       //   style: TextStyle(
//                       //       fontSize: 15, fontWeight: FontWeight.bold),
//                       // ),
//                     ],
//                   ),
//                 );
//               },
//             )),
//           ],
//         ),
//       )),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// class Status extends StatefulWidget {
//   final String foundReportNo;

//   const Status({required Key key, required this.foundReportNo}) : super(key: key);
//   @override
//   _StatusState createState() => _StatusState();
// }

// class _StatusState extends State<Status> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.arrow_back_ios),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                   Text("Status",
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Report Number: ",
//                     style: TextStyle(fontSize: 13, color: Colors.black54),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Text("#${widget.foundReportNo}",
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       )),
//                 ],
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Expanded(
//                 child: Container(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Center(
//                         child: Container(
//                           margin: EdgeInsets.all(20.0),
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).colorScheme.secondary,
//                             shape: BoxShape.circle,
//                           ),
//                           height: 150,
//                           width: 150,
//                           child: ClipOval(
//                             child: CachedNetworkImage(
//                               fit: BoxFit.cover,
//                               placeholder: (context, url) => CircularProgressIndicator(),
//                               errorWidget: (context, url, error) => Icon(Icons.error),
//                               imageUrl: '',
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Divider(),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         "Founder Details",
//                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 30.0,
//                       ),
//                       Row(
//                         children: [
//                           Text("Founder Email: "),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       Row(
//                         children: [
//                           Text("Report Location"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 6.0,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Status extends StatefulWidget {
//   final String foundReportNo;

//   const Status({ required this.foundReportNo});
//   @override
//   _StatusState createState() => _StatusState();
// }

// class _StatusState extends State<Status> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.arrow_back_ios),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 Text("Status",
//                     style:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Row(
//               children: [
//                 Text(
//                   "Report Number: ",
//                   style: TextStyle(fontSize: 13, color: Colors.black54),
//                 ),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text("#${widget.foundReportNo}",
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ],
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Expanded(
//                 child: StreamBuilder(
//               stream: FirebaseFirestore.instance
//                   .collection("foundReport")
//                   .doc(widget.foundReportNo)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (snapshot.data == null) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }

//                 return Container(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Center(
//                         child: 
//                         snapshot.data?['itemImage'] != '' ?
//                              Container(
//                                 margin: EdgeInsets.all(20.0),
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).colorScheme.secondary,
//                                     shape: BoxShape.circle),
//                                 height: 150,
//                                 width: 150,
//                                 child: ClipOval(
//                                   child: CachedNetworkImage(
//                                     fit: BoxFit.cover,
//                                     imageUrl: snapshot.data?['itemImage'],
//                                     placeholder: (context, url) =>
//                                         CircularProgressIndicator(),
//                                     errorWidget: (context, url, error) =>
//                                         Icon(Icons.error),
//                                   ),
//                                 ),
//                               )
//                             : Container(
//                                 margin: EdgeInsets.all(20.0),
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).colorScheme.secondary,
//                                     shape: BoxShape.circle),
//                                 height: 150,
//                                 width: 150,
//                                 child: ClipOval(
//                                     child: Center(
//                                         child: Text(
//                                   "N/A",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold),
//                                 ))),
//                               ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         snapshot.data?['itemName'],
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(snapshot.data?['itemDescription'],
//                           style:
//                               TextStyle(fontSize: 15, color: Colors.black54)),
//                       Divider(),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         "Founder Details",
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 30.0,
//                       ),
//                       Row(
//                         children: [
//                           Text("Founder Email: "),
//                           Text(
//                             snapshot.data?['createdBy'],
//                             style: TextStyle(
//                                 fontSize: 15, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       Row(
//                         children: [
//                           Text("Report Location"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 6.0,
//                       ),
//                       Text(
//                         snapshot.data?['reportLocation'],
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             )),
//           ],
//         ),
//       )),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  final String foundReportNo;

  const Status({required this.foundReportNo});
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text("Status",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    "Report Number: ",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("#${widget.foundReportNo}",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("foundReport")
                      .doc(widget.foundReportNo)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (!snapshot.hasData || snapshot.data == null) {
                      return Center(
                        child: Text("No data available"),
                      );
                    }

                    final data = snapshot.data!;

                    return Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: data['itemImage'] != null && data['itemImage'] != '' ?
                              Container(
                                margin: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  shape: BoxShape.circle,
                                ),
                                height: 150,
                                width: 150,
                                child: ClipOval(
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: data['itemImage'],
                                    placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                  ),
                                ),
                              )
                              : Container(
                                  margin: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    shape: BoxShape.circle,
                                  ),
                                  height: 150,
                                  width: 150,
                                  child: ClipOval(
                                    child: Center(
                                      child: Text(
                                        "N/A",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            data['itemName'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(data['itemDescription'],
                            style: TextStyle(fontSize: 15, color: Colors.black54)),
                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Founder Details",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: [
                              Text("Founder Email: "),
                              Text(
                                data['createdBy'],
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Text("Report Location"),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            data['reportLocation'],
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
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
