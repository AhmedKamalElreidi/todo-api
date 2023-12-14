// import 'package:flutter/material.dart';

// class Dismesable extends StatefulWidget {
//   const Dismesable({super.key});

//   @override
//   State<Dismesable> createState() => _DismesableState();
// }

// class _DismesableState extends State<Dismesable> {
//   @override
//   Widget build(BuildContext context) {

// return Dismissible(
//             key: UniqueKey(),
//             secondaryBackground: Container(
//               color: Colors.redAccent,
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Icon(
//                       Icons.delete_forever_rounded,
//                       color: Colors.black,
//                     ),
//                     Text(
//                       'Delete Task',
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ],
//                 ),
//               ),
//             ),

//             onDismissed: (direction) {
//               if (direction == DismissDirection.startToEnd) {
//                 setState(() {

//                 });
//               } else {
//                 setState(() {
//                   // widget.value.delete(
//                   //   '${item.title}-${item.date}',
//                   // );
//                 });
//               }
//             }, child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.green.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(color: Colors.green)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 info?.title ?? "",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                     fontSize: 18.sp),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 info?.description ?? "",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.grey,
//                                     fontSize: 14),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               // SizedBox(
//                               //   width: 50,
//                               //   height: 50,
//                               //   child: Image.file((info?.image ?? "") as File),
//                               // ),
//                               // const SizedBox(
//                               //   height: 10,
//                               // ),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           border:
//                                               Border.all(color: Colors.pink)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Row(
//                                           children: [
//                                             const Icon(Icons.timer_outlined),
//                                             const SizedBox(
//                                               width: 8,
//                                             ),
//                                             Text(info?.startDate ?? "")
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 4,
//                                   ),
//                                   Expanded(
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           border:
//                                               Border.all(color: Colors.pink)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Row(
//                                           children: [
//                                             const Icon(
//                                                 Icons.timer_off_outlined),
//                                             const SizedBox(
//                                               width: 8,
//                                             ),
//                                             Text(info?.endDate ?? "")
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                    ,

//           );

//   }
// }
