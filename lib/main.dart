import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:form_field_validator/form_field_validator.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled1/navigation_drawer_widget.dart';
void main() {
    runApp(MaterialApp(
        home:MyApp(),
    ));
}

    class MyApp extends StatefulWidget {
        @override
        _pre createState()=>_pre();

    }
    class _pre extends State<MyApp> {

        GlobalKey<FormState> j = GlobalKey<FormState>();

        void vaildate() {
            if (j.currentState!.validate()) {
                print("kk");
            }
            else {
                print("k");
            }
        }

        String vail(value) {
            if (value!.isEmpty) {
                return "required";
            }
            else {
                return " ";
            }
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            drawer:navg(),
                appBar: AppBar(
                    title: Text('my first app'),
                ),
                body: Padding(
                    padding: EdgeInsets.all(15),
                    child: Form(
                        autovalidateMode:AutovalidateMode.always,
                        key: j,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                                TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                        ),
                                        labelText: "Email"
                                    ),
                                    validator: MultiValidator(
                                        [
                                            EmailValidator(errorText: "invalid email id"),
                                            RequiredValidator(errorText: "Required"),
                                        ]


                                ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 15,
                                    ),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                            ),
                                            labelText: "Password",
                                        ),
                                        validator:MultiValidator(
                                        [
                                            RequiredValidator(errorText: "Required"),
                                            MaxLengthValidator(12,errorText:"Max length 12" ),
                                            MinLengthValidator(6,errorText: "Min length 6"),


            ]
            ),
            ),

                                    ),

                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 15,
                                    ),

                                          child:ElevatedButton(
                                              onPressed: () {
                                                  getData();
                                              },
                                              child:Text('Login'),

                                          ),
                                ),



                            ],
                        ),
                    ),
                ),
            );
        }

        Future getData() async {
            var url = Uri.parse('https://fluttermy.000webhostapp.com/getData.php');
            http.Response response = await http.get(url);
            var data = json.decode(response.body);

            Fluttertoast.showToast(
                msg: '$data',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb:3,
                backgroundColor: Colors.red,
                textColor:Colors.yellow
            );
            }



    }



