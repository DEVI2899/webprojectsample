import 'dart:js';

import 'package:flutter/material.dart';
import 'package:focused_menu/modals.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:focused_menu/focused_menu.dart';

class girdview extends StatefulWidget {
  const girdview({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<girdview> createState() => _girdviewState();
}

class _girdviewState extends State<girdview> {
  late List<Employee> _employees;
  late EmployeeDataSource _employeeDataSource;

  @override
  void initState() {
    super.initState();
    _employees = getEmployeeData();
    _employeeDataSource = EmployeeDataSource(_employees);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SfDataGrid(
            allowSorting: true,
            //showCheckboxColumn: true,
           // gridLinesVisibility: GridLinesVisibility.both,
            //headerGridLinesVisibility: GridLinesVisibility.both,
            columnWidthMode: ColumnWidthMode.fill,
           // frozenColumnsCount: 1,
            //columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
            //columnSizer: _customColumnSizer,
            //columnWidthMode: ColumnWidthMode.fitByCellValue,
            allowMultiColumnSorting: true,
            selectionMode: SelectionMode.multiple,
            source: _employeeDataSource,
            columns: [
              GridColumn(
                  columnName: 'Employeeid',
                  autoFitPadding: EdgeInsets.all(8.0),
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.centerRight,
                    child: const Text('EmployeeID',
                      overflow: TextOverflow.ellipsis,

                    ),
                  )),
              GridColumn(
                  columnName: 'name',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: const Text('FullName',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'Designation',
                  autoFitPadding: EdgeInsets.all(10.0),
                //   visible: false,
                  label: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Designation',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'Lead',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Lead',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'Manager',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Manager',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'salary',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Salary',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'Email',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Email',
                       // overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'Mobile',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Mobile',

                      ))),
              GridColumn(
                  columnName: 'JoiningDate',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'JoinDate',
                        overflow: TextOverflow.ellipsis,
                      ))),

            ],
          ),
        ));
  }

  List<Employee> getEmployeeData() {

    return [
      Employee(10001, 'devi','Associate' ,'Project Lead','kunal', 20000,'vinis@gmail.com',1234454544,'20-08-2021'),
      Employee(10002, 'Karthi', 'Associate', 'Manager','kunal', 30000,'thiru@gmail.com',8945545444,'20-08-2021'),
      Employee(10003, 'priya', 'Associate' ,'Developer','kunal', 15000,'devi@gmail.com',9876543221,'20-08-2021'),
      Employee(10004, 'suba','Associate', 'Designer','kunal', 12000,'aravind@gmail.com',1234454544 ,'20-08-2021' ),
      Employee(10005, 'Martin','Associate', 'Developer','kunal', 15000,'venkat@gmail.com',8945545444,'20-08-2021'),
      Employee(10006, 'sathiya', 'Associate', 'Developer','kunal', 15000,'subashree@gmail.com',8945545444,'20-08-2021'),
      Employee(10007, 'Anand', 'Associate','Developer','kunal', 15000,'sadhu@gmail.com',9876543221,'20-08-2022'),
      Employee(10008, 'thiru', 'Associate','Tech.Writer','kunal', 10000,'pradeep@gmail.com',1234454544,'20-08-2021'),
      Employee(10009, 'Gable', 'Associate','Developer','kunal', 15000,'ram@gmail.com',8945545444,'20-08-2021'),
      Employee(10010, 'Aravind','Associate', 'Sr.Developer','kunal', 18000,'ameer@gmail.com',8945545444,'20-08-2021')
    ];
  }
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource(List<Employee> employees) {
    dataGridRows = employees.map<DataGridRow>((dataGridRow) => DataGridRow(
        cells: [
      DataGridCell<int>(columnName: 'Employeeid', value: dataGridRow.Employeeid),
      DataGridCell<String>(columnName: 'Fullname', value: dataGridRow.name),
      DataGridCell<String>(columnName: 'designation', value: dataGridRow.designation),
      DataGridCell<String>(columnName: 'Lead', value: dataGridRow.Lead),
      DataGridCell<String>(columnName: 'Manager', value: dataGridRow.Manager),
      DataGridCell<int>(columnName: 'salary', value: dataGridRow.salary),
      DataGridCell<String>(columnName: 'E-mail', value: dataGridRow.email),
      DataGridCell<int>(columnName: 'Mobile', value: dataGridRow.Mobile),
      DataGridCell<String>(columnName: 'JoiningDate', value: dataGridRow.JoiningDate),

    ]))
        .toList();
  }

  late List<DataGridRow> dataGridRows;

  List<DataGridRow> get rows => dataGridRows;
  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: [
          Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16),
      //child: Text(row.getCells()[0].value.toString()),
      //       child:  TabBar(  indicatorSize: TabBarIndicatorSize.tab,
      //         indicator: CircleTabIndicator(color: Colors.green, radius: 4),
      //         isScrollable: true,
      //         tabs: [
      //         Tab(text:(row.getCells()[0].value.toString())
      //           ,)
      //       ],),
    ),
          Container(
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Text(row.getCells()[1].value),
    ),
          Container(
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Text(row.getCells()[2].value.toString()),
    ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(row.getCells()[3].value.toString()),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),

            child: Text(row.getCells()[4].value),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(row.getCells()[5].value.toString()),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(row.getCells()[6].value.toString()),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(row.getCells()[7].value.toString()),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding:  EdgeInsets.symmetric(horizontal: 16),
              child:  Row(children: [Text(row.getCells()[8].value),
                Expanded(
                  child: FocusedMenuHolder(
                    //menuWidth: MediaQuery.of(context).size.width*0.50,
                      blurSize: 5.0,
                      menuItemExtent: 45,
                      menuBoxDecoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      duration: Duration(milliseconds: 100),
                      animateMenuItems: true,
                      blurBackgroundColor: Colors.black54,
                      bottomOffsetHeight: 100,
                      openWithTap: true,
                      menuItems: [
                        FocusedMenuItem(
                            title: Text("Edit"),
                            trailingIcon : Icon(Icons.edit),
                            onPressed: (){}
                        ),
                        FocusedMenuItem(
                            title: Text("Delete"),
                            trailingIcon : Icon(Icons.delete),
                            onPressed: (){}
                        )
                      ],
                      onPressed: () {},
                      child: IconButton(icon : Icon(Icons.more_vert), onPressed: () {
                        print('Inside MoreVert');
                      //  const AlertBox();
                      },)),
                )
              ],)
          )
    ]);
    // row.getCells().map<Widget>((dataGridCell) {
    //
    //       return Container(
    //           padding: const EdgeInsets.symmetric(horizontal: 16.0),
    //           //alignment: (dataGridCell.columnName == 'JoiningDate') ?
    //           alignment:  Alignment.centerRight,
    //           child:  Row(children: [Icon(Icons.more_vert),Text(row.getCells()[8].value)],)
    //           // child: Text(
    //           //   dataGridCell.value.toString(),
    //           //   overflow: TextOverflow.ellipsis,
    //           // ),
    //       );
    //
    //     }).toList());
  }
}

// class CircleTabIndicator extends Decoration {
//   final BoxPainter _painter;
//
//   CircleTabIndicator({required Color color, required double radius}) : _painter = _CirclePainter(color, radius);
//
//   @override
//   BoxPainter createBoxPainter([Onchanged]) => _painter ;
// }

// class _CirclePainter extends BoxPainter {
//   final Paint _paint;
//   final double radius;
//
//   _CirclePainter(Color color, this.radius)
//       : _paint = Paint()
//     ..color = color
//     ..isAntiAlias = true;
//
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
//     final Offset circleOffset = offset + Offset(cfg.size?.width / 2, cfg.size?.height- radius);
//     canvas.drawCircle(circleOffset, radius, _paint);
//   }
// }

class Employee {


  Employee(this.Employeeid, this.name, this.designation,this.Lead,this.Manager ,this.salary, this.email , this.Mobile, this.JoiningDate);
  final int Employeeid;
  final String name;
  final String designation;
  final String Lead;
  final String Manager;
  final int salary;
  final String email;
  final int Mobile;
  final String JoiningDate;
}


// @override
// DataGridRowAdapter buildRow(DataGridRow row) {
//   return DataGridRowAdapter(cells: [
//     Container(
//       alignment: Alignment.center,
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Text(row.getCells()[0].value.toString()),
//     ),
//     Container(
//       alignment: Alignment.center,
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Text(row.getCells()[1].value),
//     ),
//     Container(
//       alignment: Alignment.center,
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Text(row.getCells()[2].value.toString()),
//     ),
//     Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(horizontal: 16),
//       )
//   ]);
// }
//class AlertBox extends StatefulWidget {
//   const AlertBox({Key? key}) : super(key: key);
//
//   @override
//   State<AlertBox> createState() => _AlertBoxState();
// }
//
// class _AlertBoxState extends State<AlertBox> {
//   @override
//   Widget build(BuildContext context) {
//     double myheight = MediaQuery
//         .of(context)
//         .size
//         .height;
//     double mywidth = MediaQuery
//         .of(context)
//         .size
//         .width;
//     return InkWell(
//         onTap: () {
//           showGeneralDialog(
//             context: context,
//             barrierDismissible: true,
//             barrierLabel: " ",
//             pageBuilder: (_, __, ___) {
//               return Align(
//                 alignment: Alignment(1, -0.7),
//                 child: Container(
//                     height: myheight / 3.5,
//                     width: mywidth / 3.5,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.white,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               TextButton(
//                                   onPressed: () {},
//                                   child: const Text(
//                                     "Sign Out", style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w300,
//                                       color: Colors.black),))
//                             ],
//                           ),
//                           SizedBox(height: myheight / 80,),
//                           Row(children: [
//                             Expanded(flex: 3,
//                               child: SizedBox(
//                                 height: myheight / 8,
//                                 width: mywidth / 6,
//                                 child: const CircleAvatar(
//                                   radius: 20.0,
//                                   backgroundImage: AssetImage(
//                                       "assets/images/profile.png"),
//                                 ),
//                               ),
//                             ),
//                             Expanded(flex: 7,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment
//                                     .start,
//                                 children: [
//                                   SizedBox(height: myheight / 90),
//                                   TextButton(onPressed: () {},
//                                       child: const Text("Vinistan",
//                                           style: TextStyle(fontSize: 20,
//                                               fontWeight: FontWeight.w300,
//                                               color: Colors.black))),
//                                   SizedBox(height: myheight / 80),
//                                   TextButton(onPressed: () {},
//                                       child: const Text(" devi@gmail.com",
//                                           style: TextStyle(fontSize: 15,
//                                               fontWeight: FontWeight.w300,
//                                               color: Colors.black))),
//                                   //Expanded(child: TextButton(onPressed: () {},child: Text("vinistanvini464vinistan@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.black)))),
//                                   SizedBox(height: myheight / 80),
//                                   //InkWell(onTap : () {},child: Text("vinistan@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.black))),
//                                   TextButton(onPressed: () {},
//                                       child: const Text("Account Setting",
//                                         style: TextStyle(
//                                             color: Colors.blueAccent),))
//                                 ],
//                               ),)
//                           ],)
//                           //Text("Vinistan",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.black),)
//                         ],
//                       ),
//                     )
//                 ),
//               );
//             },
//           );
//         });
//   }
//
//
// }