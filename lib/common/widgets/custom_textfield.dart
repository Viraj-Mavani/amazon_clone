import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final bool isObsecure;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.isObsecure,
    this.maxLines = 1,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obsecureText = false;

  @override
  void initState() {
    obsecureText = widget.isObsecure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.isObsecure
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    obsecureText = !obsecureText;
                  });
                },
                child: Icon(
                    obsecureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey),
              )
            : SizedBox(),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your ${widget.hintText}';
        }
        return null;
      },
      maxLines: widget.maxLines,
    );
  }
}
