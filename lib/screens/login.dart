import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Авторизація')),
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
                  decoration: InputDecoration(labelText: 'Логін (Email)'),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Поле обов’язкове для заповнення';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Неправильний формат email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Пароль'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Поле обов’язкове для заповнення';
                    } else if (value.length < 7) {
                      return 'Пароль має бути не менше 7 символів';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Логіка авторизації
                    }
                  },
                  child: Text('Увійти'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
                  child: Text('Реєстрація'),
                ),
                SizedBox(height: 5),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/password_reset');
                  },
                  child: Text('Відновити пароль'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
