import 'package:flutter/material.dart';
import 'Navbar.dart';


import 'package:sqflite/sqflite.dart'; //sqflite package
// import 'package:path_provider/path_provider.dart'; //path_provider package
import 'package:path/path.dart'; //used to join paths
import './memo_model.dart'; //import model class
import 'dart:io';
import 'dart:async';

class Listing extends StatefulWidget {
  const Listing({Key? key}) : super(key: key);

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {

  TextEditingController _nameListing = TextEditingController();
  TextEditingController _balanceListing = TextEditingController();
  var cash = '';
  var getName = '';
  var getBalance = '';

  Future<Database> init() async{
    Directory directory = await  Directory('/').create(recursive: true);
    final path = join(directory.path, "Listdb");

    return await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) async{
          await db.execute("""Create Table ListData(
                             list_id      INT PRIMARY KEY AUTOINCREMENT,
                             cash         TEXT,
                             getName      TEXT,
                             getBalance   TEXT)"""
          );
        });
  }
  Future<int> addItem(ListData item) async{
    final db = await init();
    return db.insert("ListData", item.toMap(),
    conflictAlgorithm : ConflictAlgorithm.ignore,);
  }
  Future<List<ListData>> fetchListData() async{
    final db = await init();
    final maps = await db.query("ListData");

    return List.generate(maps.length, (i) {
      return ListData(
        maps[i]['list_id'],
        maps[i]['cash'],
        maps[i]['getName'],
        maps[i]['getBalance'],
      );
    });
  }

  @override

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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: w,
                  height: 450,
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
                              child: Text('Listing',
                                style: TextStyle(fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                            ),
                          ],
                        ),
                        Divider(color: Colors.black,
                          thickness: 2,
                          endIndent: w*0.04,
                          indent: w*0.04,),

                        Column(
                          children: [

                            RadioListTile(

                              title: Text("Bank & Cash",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    // color: Colors.green
                                ),),
                              value: "Bank & Cash",
                              groupValue: cash,
                              onChanged: (value){
                                setState(() {
                                  cash = value.toString();
                                  print(cash);
                                });
                              },
                              // activeColor: Colors.green,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            RadioListTile(
                              title: Text("Expenses",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    // color: Colors.redAccent
                                ),),
                              value: 'Expenses',
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
                              title: Text("Person",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  // color: Colors.redAccent
                                ),),
                              value: 'Person',
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
                                controller: _nameListing,
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
                              child: TextField(
                                controller: _balanceListing,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: 'Starting Balance If Any',
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
                                    width: w*.40,
                                    child: FloatingActionButton.extended(
                                      shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                      backgroundColor: Colors.redAccent,
                                      onPressed: () {
                                        _nameListing.clear();
                                        _balanceListing.clear();
                                      },
                                      icon: Icon(Icons.clear),
                                      label: Text("Clear"),


                                    ),
                                  ),

                                  Container(
                                    width: w*.40,
                                    child: FloatingActionButton.extended(
                                      shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                      backgroundColor: Colors.green,
                                      onPressed: () {
                                        getName = _nameListing.text;
                                        getBalance = _balanceListing.text;
                                        print(cash);
                                        print(getName);
                                        print(getBalance);
                                      },
                                      icon: Icon(Icons.save),
                                      label: Text("Save"),

                                    ),
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

                Container(
                  width: w,
                  height: 480,
                  child: Card(
                    margin: EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.22,
                          child:ListView.builder(
                              itemCount: 1,
                              padding:  EdgeInsets.all(8),
                              itemBuilder: (context, index){
                                return Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.currency_exchange,
                                        color:  Colors.blue,
                                        size:  40.0,),
                                      title: Text(getName,
                                        style: TextStyle(color: Colors.blue,
                                          fontWeight: FontWeight.bold,),
                                      ),
                                      subtitle: Text(cash,
                                        style:  TextStyle(color: Colors.blue,),
                                      ),
                                      trailing: Text(getBalance,
                                        style: TextStyle(color:  Colors.blue,
                                        fontSize: 22),
                                      ),

                                    )
                                  ],
                                );
                              }
                          ),
                        )
                      ],
                    ),
                  ),
                )
                //-------------------------------------------------------------------------

              ],
            ),
          ),
        ),
      ),
    );
  }
}





class ListData
{
  final int list_id;
  final String cash;
  final String getName;
  final String getBalance;

  ListData( this.list_id, this.cash, this.getName, this.getBalance);

  Map<String,dynamic> toMap(){
    return {
      "list_id":list_id,
      "cash":cash,
      "getName":getName,
      "getBalance":getBalance,
    };
  }
}
