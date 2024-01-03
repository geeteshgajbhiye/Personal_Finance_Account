import 'package:flutter/material.dart';
import 'Navbar.dart';
// import 'package:intl/intl.dart';
// import 'package:charts_flutter/flutter.dart' as charts;

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  Future init_db() async{
    WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
      join(await getDatabasesPath(), 'GanakPFA_database.db'),
    );}

  @override
   void initState() {
    // TODO: implement initState
    super.initState();
    init_db();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

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
                  height: h*.25,
                  // padding: EdgeInsets.only(top: 4),
                  child: Card(
                    child: Column(
                      children: [
                        //Menu---------------------------------------------------------------
                        Text('Menu', textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22,
                            fontWeight: FontWeight.bold,),
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

                              //1--------------------------------------


                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'Dashboard');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/dashborad.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Dashboard',
                                        style: TextStyle(fontSize: 12,
                                            color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //2-----------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'Listing');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/listing.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Listing',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //3-------------------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'Banking');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/banking.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Banking',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //4--------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'Transaction');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/cashTransaction.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Transaction',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),

                              //---------------------------------------





                            ],
                          ),
                        ),









                      ],
                    ),
                    color: Colors.white,
                    margin: EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

                //Analysis----------------------------------------------------------



                Container(
                  width: w,
                  height: h*.25,
                  // padding: EdgeInsets.only(top: 4),
                  child: Card(
                    child: Column(
                      children: [
                        //Menu---------------------------------------------------------------
                        Text('Analysis', textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22,
                            fontWeight: FontWeight.bold,),
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

                              //1--------------------------------------


                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'AnalysisExpanses');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/Expenses.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Expenses',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //2-----------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'AnalysisEarning');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/earning.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Earning',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //3-------------------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'AnalysisLoans');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/loan.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Loan',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //4--------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'AnalysisInvestment');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/investment.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Investment',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),

                              //---------------------------------------





                            ],
                          ),
                        ),









                      ],
                    ),
                    color: Colors.white,
                    margin: EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),




                //Balances--------------------------------------------------------------------

                Container(
                  width: w,
                  height: h*.25,
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
                            // Text(DateFormat('1-MM-yyyy',).format(DateTime.now()),
                            // textAlign: TextAlign.center,
                            // style: TextStyle(fontWeight: FontWeight.bold),),

                            Text('Balances', textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 22,
                                fontWeight: FontWeight.bold,),
                            ),

                            // Text(DateFormat('dd-MM-yyyy',).format(DateTime.now()),
                            // textAlign: TextAlign.center,
                            // style: TextStyle(fontWeight: FontWeight.bold),),
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



                              //1--------------------------------------


                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'BCashBalance');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/cashBalance.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Cash Balance',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //2-----------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'BalancesInvestments');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/investmentsBLN.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Investments',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //3-------------------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'BPendingLoans');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/pendingLoans.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Pending Loans',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),


                              //4--------------------------------------------------

                              Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  // color: Colors.blue,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      Navigator.pushNamed(context, 'BalancesEarnings');
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Ink.image(image: AssetImage('assets/earningBLN.png'),
                                          height: 55,
                                          width: 55,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4,),
                                        Text('Earnings',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.black, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 4,)
                                      ],
                                    ),

                                  ),
                                ),
                              ),

                              //---------------------------------------




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
        )
      ),
    );
  }
}

