import 'package:flutter/material.dart';
import 'Navbar.dart';
import 'package:intl/intl.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  String? cash;
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
          child: Scaffold(
            backgroundColor: Colors.white70,
            drawer: NavBar(),
            appBar: AppBar(
              centerTitle: true,
              title: Text('Username',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
            ),
            bottomNavigationBar: Container(
              height: 60,
              decoration: BoxDecoration(
                // color: Colors.blue,
              ),
              child: BottomAppBar(
                color: Colors.blue,
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Product & Contact Information',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                ),
              ),
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: w,
                        height: MediaQuery.of(context).size.height*1.2,
                        child: Card(
                          margin: EdgeInsets.all(4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [


                                  Padding(
                                    padding: const EdgeInsets.only(left: 12, top: 6),
                                    child: Text('Transaction No.',
                                      style: TextStyle(fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 12, top: 6),
                                    child: Text(DateFormat('dd-MM-yyyy').format(DateTime.now()),
                                      style: TextStyle(fontSize: 16,
                                          // color: Colors.grey,
                                          fontWeight: FontWeight.w500),),
                                  ),
                                ],
                              ),
                              Divider(color: Colors.black,
                                thickness: 2,
                                endIndent: w*0.04,
                                indent: w*0.04,),

                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: w*.8,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              // contentPadding: EdgeInsets.symmetric(vertical: 25),
                                                labelText: 'Bank Or Cash',
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10)
                                                )
                                            ),
                                          ),
                                        ),

                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.info,
                                            size: 40,
                                            color: Colors.yellow,))

                                        // Icon(
                                        //   Icons.info,
                                        //   color: Colors.yellow,
                                        //   size: 40,
                                        //
                                        // ),

                                        // FloatingActionButton.extended(
                                        //   shape: BeveledRectangleBorder(
                                        //       borderRadius: BorderRadius.circular(4)
                                        //   ),
                                        //   backgroundColor: Colors.green,
                                        //   onPressed: () {},
                                        //   icon: Icon(Icons.info),
                                        //   label: Text("Info"),
                                        //
                                        //
                                        // ),
                                      ],
                                    ),
                                  ),

                                  RadioListTile(

                                    title: Text("Expenses",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.green
                                      ),),
                                    value: "Expenses",
                                    groupValue: cash,
                                    onChanged: (value){
                                      setState(() {
                                        cash = value.toString();
                                      });
                                    },
                                    // activeColor: Colors.green,
                                    controlAffinity: ListTileControlAffinity.trailing,
                                  ),
                                  RadioListTile(
                                    title: Text("Earning",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.redAccent
                                      ),),
                                    value: 'Earning',
                                    groupValue: cash,
                                    onChanged: (value){
                                      setState(() {
                                        cash = value.toString();
                                      });
                                    },
                                    // activeColor: Colors.red,
                                    controlAffinity: ListTileControlAffinity.trailing,
                                  ),
                                  RadioListTile(
                                    title: Text("Loans",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.redAccent
                                      ),),
                                    value: 'Loans',
                                    groupValue: cash,
                                    onChanged: (value){
                                      setState(() {
                                        cash = value.toString();
                                      });
                                    },
                                    // activeColor: Colors.red,
                                    controlAffinity: ListTileControlAffinity.trailing,
                                  ),
                                  RadioListTile(
                                    title: Text("Investments",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.redAccent
                                      ),),
                                    value: 'Investments',
                                    groupValue: cash,
                                    onChanged: (value){
                                      setState(() {
                                        cash = value.toString();
                                      });
                                    },
                                    // activeColor: Colors.red,
                                    controlAffinity: ListTileControlAffinity.trailing,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      maxLines: 4,
                                      minLines: 1,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        labelText: 'Note If Any',
                                        // hintText:  'Enter Name',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: w*.8,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              // contentPadding: EdgeInsets.symmetric(vertical: 25),
                                                labelText: 'Select Person Or Expenses',
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10)
                                                )
                                            ),
                                          ),
                                        ),

                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.info,
                                              size: 40,
                                              color: Colors.purple,))

                                        // Icon(
                                        //   Icons.info,
                                        //   color: Colors.yellow,
                                        //   size: 40,
                                        //
                                        // ),

                                        // FloatingActionButton.extended(
                                        //   shape: BeveledRectangleBorder(
                                        //       borderRadius: BorderRadius.circular(4)
                                        //   ),
                                        //   backgroundColor: Colors.green,
                                        //   onPressed: () {},
                                        //   icon: Icon(Icons.info),
                                        //   label: Text("Info"),
                                        //
                                        //
                                        // ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        labelText: 'Amount',
                                        // hintText:  'Enter Name',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: w*.45,
                                          child: FloatingActionButton.extended(
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(4)
                                            ),
                                            backgroundColor: Colors.redAccent,
                                            onPressed: () {},
                                            icon: Icon(Icons.paid),
                                            label: Text("Paid"),


                                          ),
                                        ),

                                        Container(
                                          width: w*.45,
                                          child: FloatingActionButton.extended(
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(4)
                                            ),
                                            backgroundColor: Colors.green,
                                            onPressed: () {},
                                            icon: Icon(Icons.payment),
                                            label: Text("Received"),


                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: w*.30,
                                          child: FloatingActionButton.extended(
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(4)
                                            ),
                                            backgroundColor: Colors.purple,
                                            onPressed: () {},
                                            icon: Icon(Icons.edit_note),
                                            label: Text("Add\nExpenses"),


                                          ),
                                        ),

                                        Container(
                                          width: w*.30,
                                          child: FloatingActionButton.extended(
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(4)
                                            ),
                                            backgroundColor: Colors.purple,
                                            onPressed: () {},
                                            icon: Icon(Icons.person_add),
                                            label: Text("Add\nPerson"),


                                          ),
                                        ),

                                        Container(
                                          width: w*.30,
                                          child: FloatingActionButton.extended(
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(4)
                                            ),
                                            backgroundColor: Colors.purple,
                                            onPressed: () {},
                                            icon: Icon(Icons.add_chart),
                                            label: Text("Add Bank\n/ Cash"),


                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),

                        ),
                      ),
                      //-------------------------------------------------------------------------

                    ],
                  ),
                ),
              ),
            ),
          ),
        );
  }
}
