import 'package:flutter_baju/ui/add_produk.dart';
import 'package:flutter_baju/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baju/ui/profile.dart';
import 'package:flutter_baju/ui/view_produk.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatelessWidget {
  Future<void> Logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Padding(
                       padding: EdgeInsets.all(26.0),
                       child: Container(
                         width: 320,
                         height: 240,
                         child: Image.asset("assets/aa.png"),
                       ),
                     ),
                   //  Padding(
                     //  padding: EdgeInsets.all(20.0),
                     //  child: Container(
                      //   width: 100,
                      //   height: 200,
                      //   child: Image.asset("assets/login.png"),
                     //  ),
                     //)
                   ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.all(10.0),
                  // ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 150.0,
                        minWidth: 150.0,
                        color: Colors.blueGrey[500],
                        textColor: Colors.white,
                        child: new Text("MENU"),
                        onPressed: () => {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => ProdukView()),
                           )
                        },
                        splashColor: Colors.redAccent,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 150.0,
                        minWidth: 150.0,
                        color: Colors.blueGrey[500],
                        textColor: Colors.white,
                        child: const Text("TAMBAH BAJU"),
                        onPressed: () => {
                          // CameraScreen()
                          // mainCamera()
                           Navigator.push(
                             context,
                            MaterialPageRoute(
                                builder: (context) => AddProduk()),
                           )
                        },
                        splashColor: Colors.redAccent,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 150.0,
                        minWidth: 150.0,
                        color: Colors.blueGrey[500],
                        textColor: Colors.white,
                        child: const Text("PROFILE"),
                        onPressed: () => {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyProfile()),
                           )
                        },
                        splashColor: Colors.redAccent,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 150.0,
                        minWidth: 150.0,
                        color: Colors.blueGrey[500],
                        textColor: Colors.white,
                        child: const Text("KELUAR"),
                        onPressed: () => {
                          Logout(),
                          //  Logout();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => loginview()),
                          )
                        },
                        splashColor: Colors.redAccent,
                      )),
                ],
              ),
            ],
          )),
    );
  }
}