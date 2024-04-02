import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key});
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // form container start
    return Form(
      key: formState,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                hintText: "Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            validator: (value) {
              if (value!.isEmpty) {
                return "Name is required";
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                hintText: "Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            validator: (value) {
              if (value!.isEmpty) {
                return "Email is required";
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                hintText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            validator: (value) {
              if (value!.isEmpty) {
                return "Password is required";
              } else if (value.isNotEmpty) {
                InputDecoration(
                  suffixIcon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                );
              }
            },
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Already have an account?"),
              Icon(
                Icons.arrow_right_alt,
                color: Color(0xFFDB3022),
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 450,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  if (formState.currentState!.validate()) {
                    print("Valid");
                  } else {
                    print("Not valid");
                  }
                },
                child: Text(
                  "SIGN UP",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
    // textFormField container End;
  }
}
