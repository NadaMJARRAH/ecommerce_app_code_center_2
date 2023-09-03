import 'package:ecommerce_app_code_center_2/widgets/app_elevated_button.dart';
import 'package:ecommerce_app_code_center_2/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscure = true;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = signUpAction;
    // _tapGestureRecognizer.onTap = signUpAction;
    // _tapGestureRecognizer.on = signUpAction2;
    super.initState();
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void signUpAction() {
    Navigator.pushNamed(context, '/sign_up_screen');
  }

  void signUpAction2() {
    print('signUpAction2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Login',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: const Color(0xFF272459),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16, end: 16, top: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Image.asset(
              'images/logo_small.png',
              height: 64,
              width: 64,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Elektra',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF272459),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Enter your e-mail account and password to browse Elektra',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color(0xFF8A8A8E),
              ),
            ),
            // TextField(
            //   style: GoogleFonts.poppins(
            //       fontSize: 16, color: const Color(0xFF22292E)),
            //   //************************//
            //   onTap: () {
            //     debugPrint('onTap');
            //   },
            //   onChanged: (String value) {
            //     debugPrint('Value : $value');
            //   },
            //   onSubmitted: (String value) {
            //     debugPrint('onSubmit: $value');
            //   },
            //   //************************//
            //   // readOnly: true,
            //   // enabled: false,
            //   //************************//
            //   textDirection: TextDirection.ltr,
            //   textAlign: TextAlign.start,
            //   textCapitalization: TextCapitalization.none,
            //   textInputAction: TextInputAction.search,
            //   //************************//
            //   cursorColor: const Color(0xFF22292E),
            //   // cursorWidth: 5,
            //   // cursorRadius: Radius.circular(10),
            //   // cursorHeight: 50,
            //   //************************//
            //   // obscureText: true,
            //   // obscuringCharacter: '#',
            //   //************************//
            //   //************************//
            //   keyboardType: TextInputType.emailAddress,
            //   //************************//
            //   // maxLength: 35,
            //   // buildCounter: (context,
            //   //     {required currentLength,
            //   //     required isFocused,
            //   //     required maxLength}) {
            //   //   return isFocused ? Text('$currentLength - $maxLength') : null;
            //   // },
            //   //************************//
            //   // minLines: 1,
            //   // maxLines: 1,
            //   //************************//
            //   minLines: null,
            //   maxLines: null,
            //   expands: true,
            //   //************************//
            //   decoration: InputDecoration(
            //     // counterText: '',
            //     //***************************//
            //     // contentPadding: EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 10),
            //     contentPadding: const EdgeInsetsDirectional.symmetric(
            //       horizontal: 20,
            //     ),
            //     //***************************//
            //     constraints: const BoxConstraints(
            //       minHeight: 50,
            //       maxHeight: 56,
            //     ),
            //     //***************************//
            //     hintText: 'Email Address',
            //     hintStyle: GoogleFonts.poppins(
            //       fontSize: 16,
            //       color: const Color(0xFFC5C5C7),
            //     ),
            //     hintMaxLines: 1,
            //     hintTextDirection: TextDirection.ltr,
            //     //***************************//
            //     //   labelText: 'Email',
            //     //   labelStyle: GoogleFonts.poppins(
            //     //     fontSize: 18,
            //     //   ),
            //     //   floatingLabelStyle: GoogleFonts.poppins(
            //     //     fontSize: 18,
            //     //   ),
            //     // floatingLabelAlignment: FloatingLabelAlignment.center,
            //     // floatingLabelBehavior: FloatingLabelBehavior.auto,
            //     //***************************//
            //     // fillColor: Colors.grey.shade100,
            //     // filled: true,
            //     //***************************//
            //     // prefixIcon: Icon(Icons.email),
            //     // prefix:Icon(Icons.email),
            //     // prefixText: 'israa-'
            //     //***************************//
            //     // suffixIcon: Icon(Icons.remove_red_eye),
            //     // suffix: Icon(Icons.remove_red_eye),
            //     // suffixText: 'Valid'
            //     //***************************//
            //     // icon: Icon(Icons.email),
            //     // iconColor: Colors.pink,
            //     //***************************//
            //     // helperText: 'example@gmail.com',
            //     // helperStyle: GoogleFonts.poppins(),
            //     // helperMaxLines: 1,
            //     //***************************//
            //     // errorText: 'Enter Correct Email',
            //     // errorStyle: GoogleFonts.poppins(),
            //     // errorMaxLines: 1,
            //     //***************************//
            //     // border: InputBorder.none,
            //     // border: UnderlineInputBorder(
            //     //   borderSide: const BorderSide(
            //     //     width: 5,
            //     //     color: Colors.pink,
            //     //   ),
            //     //   borderRadius: BorderRadius.circular(10),
            //     // ),
            //     // border: OutlineInputBorder(
            //     //   borderSide: const BorderSide(
            //     //     width: 5,
            //     //     color: Colors.pink,
            //     //   ),
            //     //   borderRadius: BorderRadius.circular(10),
            //     // ),
            //     enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //         borderSide:
            //             BorderSide(color: Colors.grey.shade300, width: 1)),
            //     focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //         borderSide: const BorderSide(color: Colors.pink, width: 1)),
            //     disabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10),
            //       borderSide: BorderSide(
            //         color: Colors.grey.shade100,
            //         width: 2,
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 24,
            ),
            AppTextField(
              hint: 'Email Address',
              keyboard: TextInputType.emailAddress,
              controller: _emailTextEditingController,
              maxLines: null,
              minLines: null,
              expands: true,
              constraints: 50,
            ),
            const SizedBox(
              height: 16,
            ),
            AppTextField(
              controller: _passwordTextEditingController,
              hint: 'Password',
              keyboard: TextInputType.visiblePassword,
              obscure: _obscure,
              suffix: _obscure ? Icons.visibility : Icons.visibility_off,
              minLines: 1,
              maxLines: 1,
              expands: false,
              constraints: 56,
              suffixOnPress: () {
                setState(() {
                  _obscure = !_obscure;
                });
              },
              // constraints: 80,
            ),
            // const SizedBox(
            //   height: 16,
            // ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsetsDirectional.zero,
                ),
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    // height: 5,
                    fontSize: 16,
                    color: const Color(0xFF272459),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            AppElevatedButton(
                title: 'Login',
                onPress: () {
                  performLogin();
                }),
            const SizedBox(
              height: 42,
            ),
            RichText(
              text: TextSpan(
                text: 'Don’t have an account? ',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF272459),
                  fontSize: 16,
                ),
                children: [
                  // const TextSpan(
                  //   text: ' ',
                  // ),
                  TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: 'Sign Up',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF272459),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //performLogin => checkData => login (Single Responsibility) Design Pattern (SOLID)
  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Color(0xFFFF4343),
        content: Text('Enter Required Data'),
      ),
    );
    return false;
  }

  void login() {
    Navigator.pushNamed(context, '');
  }
}
