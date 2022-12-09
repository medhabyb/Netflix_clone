// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/DDD.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.15), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 300,
                    child: const Center(
                        child: Text(
                      "N E T F L I X",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Colors.red),
                    )),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  //Email
                  Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          //<-- SEE HERE
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          //<-- SEE HERE
                          borderSide: BorderSide(width: 3, color: Colors.red),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w300),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  //Password
                  Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(width: 3, color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            //<-- SEE HERE
                            borderSide: BorderSide(width: 3, color: Colors.red),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w300),
                          hintText: 'Password'),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),

                  //Button

                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(
                            width: 2,
                            color: Colors.grey,
                          ),
                          fixedSize: const Size(270, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      child: const Text('SIGN IN'),
                    ),
                  ),

                  //forgot password

                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(
                      child: InkWell(
                        child: Text(
                          "I forgot my password",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  Container(
                    child: InkWell(
                      child: Text(
                        "You don't have an account ?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 80),
                        child: Text(
                          "Start your free month!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Bottom
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Terms",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 4,
                          ),
                        ),
                        Text(
                          "Privacy",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
