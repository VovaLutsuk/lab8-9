import 'package:flutter/material.dart';

class PasswordResetScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Відновлення паролю')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Логін або Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Поле обов’язкове для заповнення';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Неправильний формат email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Логіка відновлення паролю
                    }
                  },
                  child: Text('Відновити пароль'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Повернутись до авторизації'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
