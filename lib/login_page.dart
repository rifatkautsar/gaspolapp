import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gaspolapp/model/json_user.dart';
import 'package:http/http.dart' as http;
import 'package:gaspolapp/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboard_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new LoginPagee(),
    );
  }
}

class LoginPagee extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPagee> {
  static var uri = "http://192.168.1.3/gaspolAPI";

  static BaseOptions options = BaseOptions(
      baseUrl: uri,
      responseType: ResponseType.plain,
      connectTimeout: 30000,
      receiveTimeout: 30000,
      validateStatus: (code) {
        if (code >= 200) {
          return true;
        }
      });
  static Dio dio = Dio(options);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  Future<dynamic> _loginUser(String karyawanId, String password) async {
    try {
      Options options = Options(
        contentType: ContentType.parse('application/json'),
      );

      Response response = await dio.post('/login',
          data: {"karyawan_id": karyawanId, "karyawan_password": password},
          options: options);

      if (response.statusCode == 200) { 
        var responseJson = json.decode(response.data);
        print(responseJson);
        return responseJson;
      } else if (response.statusCode == 500) {
        Fluttertoast.showToast(
            msg: "Username Atau Password Salah!",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 1,
            textColor: Colors.white,
            fontSize: 16.0);
      } else
        throw Exception('Authentication Error');
    } on DioError catch (exception) {
      if (exception == null ||
          exception.toString().contains('SocketException')) {
        throw Exception("Network Error");
      } else if (exception.type == DioErrorType.RECEIVE_TIMEOUT ||
          exception.type == DioErrorType.CONNECT_TIMEOUT) {
        throw Exception(
            "Could'nt connect, please ensure you have a stable network.");
      } else {
        return null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF0C1946),
                  const Color(0xFF0F88DF),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200.0,
            left: 10,
            right: 10,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  "assets/logo.png",
                  width: 220.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: new Text(
                    "Great Account System & Product Solution",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 13.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 70,
            child: new Column(
              children: <Widget>[
                new Text(
                  "Wellcome !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                new Text(
                  " Please insert your username and password\n below to login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                      fontSize: 13.0),
                ),
              ],
            ),
          ),
          Positioned(
            top: 400,
            left: 30,
            child: Column(
              children: <Widget>[
                new Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF0F5586),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      new Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          child: TextField(
                            controller: _emailController,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.person),
                                hintText: "Username",
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: new Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFF0F5586),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            child: TextField(
                              controller: _passwordController,
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.lock),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.white, fontSize: 12.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 520,
            left: 30,
            child: SizedBox(
              width: 350,
              height: 50,
              child: new RaisedButton(
                color: Color(0xFF115587),
                onPressed: () async {
                  setState(() => _isLoading = true);
                  var res = await _loginUser(
                      _emailController.text, _passwordController.text);
                  setState(() => _isLoading = false);

                  JsonUser user = JsonUser.fromJson(res);
                  if (user != null) {
                    Fluttertoast.showToast(
                        msg: "${user.Message}",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIos: 1,
                        textColor: Colors.white,
                        fontSize: 16.0);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  } else {
                    Fluttertoast.showToast(
                        msg: "Error ! Cuy",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIos: 1,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: new Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
