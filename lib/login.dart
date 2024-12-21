import 'package:firstapp/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visibilite=false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Image.asset("assets/login.jpeg"),
                  ),
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.person),
                      ),
                ),
                TextFormField(
                  controller: password,
                  obscureText: visibilite,
                  decoration: InputDecoration(
                    hintText: "Mot de passe",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        child: visibilite
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                        onTap: () {
                          visibilite = !visibilite;
                          setState(() {});
                        },
                      ))),
                      OutlinedButton(onPressed: () {
                        if(email.text.isEmpty || password.text.isEmpty){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Veuillez saisir le login ou le mot de passe")));
                        }
                        if(email.text=="example@gmail.com" && password.text=="A4g!s@8S"){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return const Home();
                          }));
                        }else{
                           ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: 
                            Text("Login ou mot de passe incorrect")));
                        }
                        
                        print('connexion');
                      },
                      child: Text('Connexion'),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}