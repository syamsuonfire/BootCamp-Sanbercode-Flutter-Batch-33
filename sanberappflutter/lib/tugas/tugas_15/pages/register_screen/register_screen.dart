import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:sanberappflutter/tugas/tugas_15/config/dio_http.dart';
import 'package:sanberappflutter/tugas/tugas_15/pages/login_screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String? name;
  late String? username;
  late String? email;
  late String? password;
  late bool _isloading = false;

  Future<dynamic> _RegisterSubmit() async {
    var data = {
      "name": name,
      "username": username,
      "email": email,
      "password": password
    };
    try {
      //print(data);
      setState(() {
        _isloading = true;
      });
      var response = await DioHttp.request.post("api/register", data: data);
      print(response.data);

      setState(() {
        _isloading = false;
      });

      final snackBar = SnackBar(
        content: const Text('Data Berhasil Disimpan'),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            //some code to undo the change
          },
        ),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } on DioError catch (dioError) {
      var message = "";
      switch (dioError.response!.statusCode) {
        case 422:
          Map<String, dynamic> _errorData = dioError.response!.data['errors'];
          var getListMessage = _errorData.values;
          var result = getListMessage.map((item) =>
              item.toString().substring(1, item.toString().length - 2));
          setState(() {
            _isloading = false;
          });
          message = result.join("\n");
          break;
        case 404:
          setState(() {
            _isloading = false;
          });
          message = "Server Not Found";
          break;
        default:
          setState(() {
            _isloading = false;
          });
          message = "Server Error";
      }
      final snackBar = SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            //some code to undo the change
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: LoadingOverlay(
          isLoading: _isloading,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Container(
              alignment: Alignment.center,
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      child: Image.asset("assets/img/logo.png"),
                    ),
                    Text(
                      "JobFinder",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff475BD7)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Explore Your Dream Jobs",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff475BD7),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10),
                          child: TextFormField(
                            validator: (String? nameValue) {
                              if (nameValue!.isEmpty) {
                                return "enter name text";
                              }
                              name = nameValue;
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: "Name",
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10),
                          child: TextFormField(
                            validator: (String? usernameValue) {
                              if (usernameValue!.isEmpty) {
                                return "enter username text";
                              }
                              username = usernameValue;
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: "Username",
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10),
                          child: TextFormField(
                            validator: (String? emailValue) {
                              if (emailValue!.isEmpty) {
                                return "enter email text";
                              }
                              email = emailValue;
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                            obscureText: !_passwordVisible,
                            validator: (String? passwordValue) {
                              if (passwordValue!.isEmpty) {
                                return "enter password text";
                              }
                              password = passwordValue;
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  }),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text("Sudah Punya Akun?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text("Masuk")),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: TextButton(
                            child: Text(
                              "Daftar",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _RegisterSubmit();
                              }
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
