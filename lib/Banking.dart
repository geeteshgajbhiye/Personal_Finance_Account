import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Navbar.dart';

class Banking extends StatefulWidget {
  const Banking({Key? key}) : super(key: key);

  @override
  State<Banking> createState() => _BankingState();
}

class _BankingState extends State<Banking> {

  @override
  String? cash;
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // bool isChecked = false;



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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: w,
                  height: 320,
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
                              child: Text('Banking',
                                style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.bold,
                                color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Text(DateFormat('dd-MM-yyyy').format(DateTime.now()),
                                style: TextStyle(fontSize: 16,
                                    // color: Colors.grey,
                                    fontWeight: FontWeight.w500),),
                            )
                          ],
                        ),
                        Divider(color: Colors.black,
                          thickness: 2,
                          endIndent: w*0.04,
                          indent: w*0.04,),

                        Column(
                          children: [

                            RadioListTile(

                              title: Text("Cash Withdrawal",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green
                              ),),
                              value: "Cash Withdrawal",
                              groupValue: cash,
                              onChanged: (value){
                                setState(() {
                                  cash = value.toString();
                                });
                              },
                              activeColor: Colors.green,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            RadioListTile(
                                title: Text("Cash Deposit",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent
                                  ),),
                                value: 'Cash Deposit',
                                groupValue: cash,
                                onChanged: (value){
                                  setState(() {
                                    cash = value.toString();
                                  });
                                },
                              activeColor: Colors.red,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),

                            // Center(
                            //     child:
                            //     CheckboxListTile(
                            //         title: Text('Cash Withdrawal', style: TextStyle(fontSize: 20),),
                            //         value: isChecked,
                            //         onChanged: (value)
                            //       {
                            //         setState((){
                            //           isChecked = value!;});
                            //       },
                            //       activeColor: Colors.green,
                            //       checkColor: Colors.green,
                            //       ),
                            //   ),
                            // Center(
                            //   child:
                            //   CheckboxListTile(
                            //     title: Text('Cash Deposit', style: TextStyle(fontSize: 20),),
                            //     value: isChecked,
                            //     onChanged: (value)
                            //     {
                            //       setState((){
                            //         isChecked = value!;});
                            //     },
                            //     activeColor: Colors.red,
                            //     checkColor: Colors.red,
                            //   ),
                            // ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: 'Name',
                                  hintText:  'Enter Name',
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
                                    width: w*.5,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        // contentPadding: EdgeInsets.symmetric(vertical: 25),
                                        labelText: 'AMOUNT',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        )
                                      ),
                                    ),
                                  ),

                                  FloatingActionButton.extended(
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    backgroundColor: Colors.green,
                                    onPressed: () {},
                                    icon: Icon(Icons.save),
                                    label: Text("Save"),


                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                      ],
                    ),

                  ),
                ),
                //-------------------------------------------------------------------------

                Container(
                  width: w,
                  height: 270,
                  // padding: EdgeInsets.only(top: 4),
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        //Menu---------------------------------------------------------------
                        Row(
                          mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(DateFormat('1-MM-yyyy',).format(DateTime.now()),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w500,
                                  fontSize: 16),),

                            Text('Month', textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 22,
                                fontWeight: FontWeight.bold,),
                            ),

                            Text(DateFormat('dd-MM-yyyy',).format(DateTime.now()),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w500,
                                  fontSize: 16),),
                          ],
                        ),
                        Divider(color: Colors.black,
                          thickness: 2,
                          endIndent: w*0.05,
                          indent: w*0.05,),
                        Expanded(
                          child : Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [



                            ],
                          ),
                        ),









                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
