import 'package:flutter/material.dart';
import 'package:flutter_application_pas/componets/controller/loginapi_controller.dart';
import 'package:flutter_application_pas/componets/mybutton.dart';
import 'package:flutter_application_pas/componets/mytextfield.dart';
import 'package:get/get.dart';

class LoginClone extends StatelessWidget {
  LoginClone({super.key});

  final controller = Get.put(LoginApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "Aplikasi",
                style: TextStyle(
                  fontSize: 40,
                  color: const Color.fromARGB(255, 23, 24, 26),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: MyTextfield(
                myHint: "Input Username",
                txtController: controller.txtUsername,
                radius: 10,
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: MyTextfield(
                myHint: "Input Password",
                txtController: controller.txtPassword,
                radius: 10,
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              child: Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : MyButton(
                        text: "Log In",
                        onPressed: () {
                          controller.login();
                        },
                        color: Colors.blue,
                        radius: 10,
                      ),
              ),
            ),

            TextButton(onPressed: () {}, child: Text("Forgotten Password?")),

            SizedBox(
              width: 200,
              height: 45,
              child: MyButton(
                text: "Create New Account",
                onPressed: () {},
                color: Colors.green,
                radius: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
