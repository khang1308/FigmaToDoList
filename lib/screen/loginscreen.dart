import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, top: 96, right: 16),
              child: Column(children: [
                SizedBox(
                  child: Image.asset('asset/images/Login1.png'),
                ),
                Container(
                  width: 375,
                  height: 109,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Log in',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login with social networks',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xff65AAEA),
                                ),
                                child: Image.asset('asset/images/login4.png')),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xff65AAEA),
                                ),
                                child: Image.asset('asset/images/login2.png')),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xff65AAEA),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('asset/images/login3.1.png'),
                                    Image.asset('asset/images/login3.2.png')
                                  ],
                                )),
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || !value.contains('@')) {
                              return 'Tên đăng nhập sai';
                            } else if (value.contains(' ')) {
                              return 'không chứa khoảng trắng';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null) {
                          return 'Hay dien mat khau';
                        } else if (value.length < 6) {
                          return 'Mật khẩu quá ngắn';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    backgroundColor: const Color(0xffE3562A),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/list');
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                )
              ]),
            ),
          ],
        )),
      ),
    );
  }
}
