import 'package:flutter/material.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';

class TextFiled extends StatelessWidget {
   String _hint;
   TextEditingController _nameTextEditingController;
   String? _emailError;
   int _minLines;
   int _maxLines;
 TextInputType _textInputType;


  TextFiled(this._hint, this._nameTextEditingController, this._emailError,
      this._minLines, this._maxLines, this._textInputType);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _nameTextEditingController,
        minLines: _minLines,
        maxLines: _maxLines,
        cursorColor: AppColors.INDICATOR_SELECTED_COLOR,
        keyboardType: _textInputType,//TextInputType.emailAddress
        decoration: InputDecoration(
          hintText: _hint,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: AppColors.INDICATOR_SELECTED_COLOR,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.INDICATOR_SELECTED_COLOR,
            ),
          ),
          errorText: _emailError,
          errorMaxLines: 1,
          // errorStyle: ,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
        ));
  }
}


