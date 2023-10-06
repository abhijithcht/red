import 'package:flutter/material.dart';
import 'package:red/red/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  TextEditingController first = TextEditingController();
  TextEditingController last = TextEditingController();

  String? selectedOption;
  String? gender;

  List<String> options = ['Kannur', 'Trivandrum', 'Cochin', 'Kozhikode'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R E G I S T E R'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: first,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: 'First name'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: last,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: 'Last name'),
                ),
                SizedBox(height: 10),
                Text(
                  'Choose your Gender',
                  style: TextStyle(fontSize: 16),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  title: Text('Male'),
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Radio<String>(
                    value: 'female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  title: Text('Female'),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Choose your City'),
                    SizedBox(width: 40),
                    DropdownButton(
                      items:
                          options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: selectedOption,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedOption = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: mail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: confirm,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Confirm assword'),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Register'),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
