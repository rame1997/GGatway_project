import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggatwayapp/utilities/app_colors.dart';
import 'package:ggatwayapp/utilities/size_config.dart';
import 'package:ggatwayapp/widgets/card_contant.dart';
import 'package:ggatwayapp/widgets/text.dart';
import 'package:ggatwayapp/widgets/text_filed.dart';

class ContantUs extends StatefulWidget {
  @override
  _ContantUsState createState() => _ContantUsState();
}

class _ContantUsState extends State<ContantUs> {
  late TextEditingController _nameTextEditingController;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _mobileTextEditingController;
  late TextEditingController _subjectTextEditingController;
  late TextEditingController _detilesTextEditingController;
  String? _emailError;
  String? _nameError;
  String? _mobileError;
  String? _subjectError;
  String? _detilesError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
    _mobileTextEditingController = TextEditingController();
    _subjectTextEditingController = TextEditingController();
    _detilesTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _mobileTextEditingController.dispose();
    _subjectTextEditingController.dispose();
    _detilesTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios,
                        color: AppColors.APPBAR_TITLE),
                  ),
                  title: TextCustom(
                    'Contant us',
                    'rob',
                    FontWeight.w700,
                    SizeConfig.scaleTextFont(22),
                    AppColors.APPBAR_TITLE,
                    null,
                  ),

                ),
                body: Scrollbar(
                    child: SingleChildScrollView(
                        child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: SizeConfig.scaleHeight(150),
                      color: AppColors.INDICATOR_SELECTED_COLOR,
                      child: Center(
                        child: TextCustom(
                          'Contant us',
                          'rob',
                          FontWeight.w400,
                          SizeConfig.scaleTextFont(32),
                          Colors.white,
                          TextAlign.start,
                        ),
                      ),
                    ),
                    CardContant('Email', FontAwesomeIcons.envelope,
                        'info@ggatway.tech', 1),
                    CardContant('Address', FontAwesomeIcons.mapMarker,
                        'AL Rasheed Street AL Jamal Building 7th floor', 2),
                    CardContant('phone', FontAwesomeIcons.phoneAlt,
                        '+970-8-2622766', 3),
                    Center(
                      child: Container(
                        width: SizeConfig.scaleWidth(50),
                        height: SizeConfig.scaleHeight(50),
                        child: Icon(FontAwesomeIcons.headset,
                            size: 30,
                            color: AppColors.INDICATOR_SELECTED_COLOR),
                      ),
                    ),
                    Center(
                      child: TextCustom(
                        'Feel free to conatnt us anytime',
                        'rob',
                        FontWeight.w500,
                        SizeConfig.scaleTextFont(24),
                        AppColors.INDICATOR_SELECTED_COLOR,
                        TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(10),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.scaleWidth(8),
                          right: SizeConfig.scaleWidth(8)),
                      child: Row(
                        children: [
                          Flexible(
                              child: TextFiled(
                                  'Name',
                                  _nameTextEditingController,
                                  _emailError,
                                  1,
                                  1,
                                  TextInputType.text)),
                          SizedBox(
                            width: SizeConfig.scaleWidth(5),
                          ),
                          Flexible(
                              child: TextFiled(
                                  'Email',
                                  _emailTextEditingController,
                                  _nameError,
                                  1,
                                  1,
                                  TextInputType.emailAddress)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(10),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.scaleWidth(8),
                          right: SizeConfig.scaleWidth(8)),
                      child: Row(
                        children: [
                          Flexible(
                              child: TextFiled(
                                  'Mobile',
                                  _mobileTextEditingController,
                                  _mobileError,
                                  1,
                                  1,
                                  TextInputType.text)),
                          SizedBox(
                            width: SizeConfig.scaleWidth(5),
                          ),
                          Flexible(
                              child: TextFiled(
                                  'Subject',
                                  _subjectTextEditingController,
                                  _subjectError,
                                  1,
                                  1,
                                  TextInputType.text)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(10),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.scaleWidth(8),
                          right: SizeConfig.scaleWidth(8)),
                      child: SingleChildScrollView(
                          child: Flexible(
                              child: TextFiled(
                                  'Detiles',
                                  _detilesTextEditingController,
                                  _detilesError,
                                  1,
                                  10,
                                  TextInputType.text))),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(15),
                    ),
                    ElevatedButton(
                      onPressed: () => performLogin(),
                      child: Text('Send'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(SizeConfig.scaleWidth(130),
                            SizeConfig.scaleHeight(60)),
                        primary: AppColors.INDICATOR_SELECTED_COLOR,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ))))));
  }

  void performLogin() {
    if (checkData()) {
      send();
    }
  }

  bool checkData() {
    if (_nameTextEditingController.text.isNotEmpty &&
        _subjectTextEditingController.text.isNotEmpty &&
        _detilesTextEditingController.text.isNotEmpty &&
        _emailTextEditingController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showSnackBar(message: 'Please, enter required data', error: true);
    return false;
  }

  void send() {
    showSnackBar(message: 'Message sent successfuly', error: false);
  }

  void showSnackBar({required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: error ? Colors.red : Colors.green,
      ),
    );
  }

  void checkErrors() {
    setState(() {
      _nameError = _nameTextEditingController.text.isEmpty ? 'Enter name ' : '';
      _emailError =
          _emailTextEditingController.text.isEmpty ? 'Enter email address' : '';
      _mobileError =
          _mobileTextEditingController.text.isEmpty ? 'Enter mobile ' : '';
      _subjectError =
          _subjectTextEditingController.text.isEmpty ? 'Enter sublject ' : '';
      _detilesError =
          _detilesTextEditingController.text.isEmpty ? 'Enter detelies ' : '';
    });
  }
}
