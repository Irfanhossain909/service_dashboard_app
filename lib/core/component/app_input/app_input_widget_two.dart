import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class AppInputWidgetTwo extends StatefulWidget {
  const AppInputWidgetTwo({
    super.key,
    this.hintText,
    this.prefix,
    this.suffixIcon,
    this.isPassWord = false,
    this.isEmail = false,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.keyboardType,
    this.fillColor,
    this.elevation = 0.0,
    this.elevationColor,
    this.minLines = 1,
    this.readOnly = false,
    this.borderRadius,
    this.contentPadding,
    this.style,
    this.maxLines,
    this.onFieldSubmitted,
    this.onTap,
    this.onChanged,
    this.isPassWordSecondValidation = false,
    this.isOptional = false,
    this.isPassWordSecondValidationController,
    this.title,
    this.validator,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.textAlignVertical,
    this.filled = true,
    this.borderColor,

    /// DESCRIPTION
    this.isDescription = false,
    this.height,

    /// TITLE STYLE
    this.titleFontSize,
    this.titleColor,
    this.titleFontWeight,

    /// TEXT & HINT
    this.hintColor,
    this.textColor,
  });

  final String? hintText;
  final Widget? prefix;
  final Widget? suffixIcon;
  final bool isPassWord;
  final bool readOnly;
  final bool isEmail;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final bool filled;
  final double elevation;
  final Color? elevationColor;
  final int minLines;
  final int? maxLines;
  final double? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? style;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final TextAlignVertical? textAlignVertical;
  final bool isPassWordSecondValidation;
  final bool isOptional;
  final TextEditingController? isPassWordSecondValidationController;
  final String? title;
  final FormFieldValidator<String>? validator;
  final Color? borderColor;

  /// DESCRIPTION
  final bool isDescription;

  /// default 120.h when isDescription = true
  final double? height;

  /// TITLE STYLE
  final double? titleFontSize;
  final Color? titleColor;
  final FontWeight? titleFontWeight;

  /// TEXT & HINT
  final Color? hintColor;
  final Color? textColor;

  @override
  State<AppInputWidgetTwo> createState() => _AppInputWidgetTwoState();
}

class _AppInputWidgetTwoState extends State<AppInputWidgetTwo> {
  bool isShowPassWord = true;

  @override
  Widget build(BuildContext context) {
    final Color effectiveBorderColor =
        widget.borderColor ?? Colors.black.withValues(alpha: .2);

    /// ✅ DESCRIPTION HEIGHT DEFAULT 120
    final double? effectiveHeight = widget.isDescription
        ? (widget.height ?? 120.h)
        : widget.height;

    final Color effectiveTextColor = widget.textColor ?? Colors.black;

    final Color effectiveHintColor =
        widget.hintColor ?? Colors.black.withValues(alpha: .4);

    return Material(
      elevation: widget.elevation,
      shadowColor: widget.elevationColor,
      borderOnForeground: false,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Row(
              children: [
                Text(
                  widget.title!,
                  style: GoogleFonts.jost(
                    fontSize: widget.titleFontSize ?? 14.sp,
                    color: widget.titleColor ?? Colors.black,
                    fontWeight: widget.titleFontWeight ?? FontWeight.w400,
                  ),
                ),
                if (!widget.isOptional)
                  Text(
                    ' *',
                    style: GoogleFonts.jost(
                      color: widget.titleColor ?? Colors.black,
                      fontSize: widget.titleFontSize ?? 14.sp,
                    ),
                  ),
              ],
            ),

          SizedBox(height: 8.h),

          SizedBox(
            height: effectiveHeight,
            child: TextFormField(
              cursorColor: effectiveBorderColor,
              onChanged: widget.onChanged,
              onTap: widget.onTap,
              onFieldSubmitted: widget.onFieldSubmitted,
              readOnly: widget.readOnly,
              controller: widget.controller,

              /// ✅ DESCRIPTION SETTINGS
              minLines: widget.isDescription ? null : widget.minLines,

              maxLines: widget.isDescription ? null : (widget.maxLines ?? 1),

              expands: widget.isDescription,

              validator: widget.validator,

              keyboardType: widget.isEmail
                  ? TextInputType.emailAddress
                  : widget.keyboardType,

              textInputAction: widget.textInputAction,

              obscureText: widget.isPassWord && isShowPassWord,

              autovalidateMode: AutovalidateMode.onUserInteraction,

              obscuringCharacter: "*",

              /// ✅ TOP START TEXT
              textAlignVertical: widget.isDescription
                  ? TextAlignVertical.top
                  : (widget.textAlignVertical ?? TextAlignVertical.center),

              style:
                  widget.style ??
                  GoogleFonts.jost(
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: effectiveTextColor,
                    fontSize: 14.sp,
                  ),

              decoration: InputDecoration(
                hintText: widget.hintText,

                hintStyle: GoogleFonts.jost(
                  fontSize: 14.sp,
                  color: effectiveHintColor,
                ),

                filled: widget.filled,

                fillColor: widget.fillColor ?? Colors.transparent,

                /// ✅ DESCRIPTION PADDING
                contentPadding:
                    widget.contentPadding ??
                    EdgeInsets.symmetric(
                      vertical: widget.isDescription ? 14.h : 12.h,
                      horizontal: 12.w,
                    ),

                prefixIcon: widget.prefix != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: widget.prefix,
                      )
                    : null,

                suffixIcon: widget.isPassWord
                    ? IconButton(
                        color: effectiveBorderColor,
                        padding: EdgeInsets.zero,
                        iconSize: 18.sp,
                        onPressed: () {
                          setState(() {
                            isShowPassWord = !isShowPassWord;
                          });
                        },
                        icon: isShowPassWord
                            ? Icon(
                                Icons.visibility,
                                color: AppColors.brown.withValues(alpha: 0.4),
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: AppColors.brown.withValues(alpha: 0.4),
                              ),
                      )
                    : widget.suffixIcon,

                prefixIconConstraints:
                    widget.prefixIconConstraints ??
                    const BoxConstraints(maxWidth: 40, maxHeight: 40),

                suffixIconConstraints:
                    widget.suffixIconConstraints ??
                    const BoxConstraints(maxWidth: 40, maxHeight: 40),

                border: OutlineInputBorder(
                  borderSide: BorderSide(color: effectiveBorderColor),
                  borderRadius: BorderRadius.circular(
                    widget.borderRadius ?? 12.r,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: effectiveBorderColor),
                  borderRadius: BorderRadius.circular(
                    widget.borderRadius ?? 12.r,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: effectiveBorderColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    widget.borderRadius ?? 12.r,
                  ),
                ),

                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(
                    widget.borderRadius ?? 12.r,
                  ),
                ),

                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(
                    widget.borderRadius ?? 12.r,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:service_dashboard_app/core/const/app_color.dart';

// class AppInputWidgetTwo extends StatefulWidget {
//   const AppInputWidgetTwo({
//     super.key,
//     this.hintText,
//     this.prefix,
//     this.suffixIcon,
//     this.isPassWord = false,
//     this.isEmail = false,
//     this.textInputAction = TextInputAction.next,
//     this.controller,
//     this.keyboardType,
//     this.fillColor,
//     this.elevation = 0.0,
//     this.elevationColor,
//     this.minLines = 1,
//     this.readOnly = false,
//     this.borderRadius,
//     this.contentPadding,
//     this.style,
//     this.maxLines,
//     this.onFieldSubmitted,
//     this.onTap,
//     this.onChanged,
//     this.isPassWordSecondValidation = false,
//     this.isOptional = false,
//     this.isPassWordSecondValidationController,
//     this.title,
//     this.validator,
//     this.prefixIconConstraints,
//     this.suffixIconConstraints,
//     this.textAlignVertical,
//     this.filled = true,
//     this.borderColor,

//     /// NEW
//     this.isDescription = false,
//     this.height,

//     /// TITLE STYLE
//     this.titleFontSize,
//     this.titleColor,
//     this.titleFontWeight,

//     /// ✅ NEW PARAMS
//     this.hintColor,
//     this.textColor,
//   });

//   final String? hintText;
//   final Widget? prefix;
//   final Widget? suffixIcon;
//   final bool isPassWord;
//   final bool readOnly;
//   final bool isEmail;
//   final TextInputAction? textInputAction;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final Color? fillColor;
//   final bool filled;
//   final double elevation;
//   final Color? elevationColor;
//   final int minLines;
//   final int? maxLines;
//   final double? borderRadius;
//   final EdgeInsetsGeometry? contentPadding;
//   final TextStyle? style;
//   final BoxConstraints? prefixIconConstraints;
//   final BoxConstraints? suffixIconConstraints;
//   final void Function(String)? onFieldSubmitted;
//   final void Function()? onTap;
//   final void Function(String)? onChanged;
//   final TextAlignVertical? textAlignVertical;
//   final bool isPassWordSecondValidation;
//   final bool isOptional;
//   final TextEditingController? isPassWordSecondValidationController;
//   final String? title;
//   final FormFieldValidator<String>? validator;
//   final Color? borderColor;

//   final bool isDescription;
//   final double? height;

//   final double? titleFontSize;
//   final Color? titleColor;
//   final FontWeight? titleFontWeight;

//   /// ✅ NEW
//   final Color? hintColor;
//   final Color? textColor;

//   @override
//   State<AppInputWidgetTwo> createState() => _AppInputWidgetTwoState();
// }

// class _AppInputWidgetTwoState extends State<AppInputWidgetTwo> {
//   bool isShowPassWord = true;

//   @override
//   Widget build(BuildContext context) {
//     final Color effectiveBorderColor =
//         widget.borderColor ?? Colors.black.withValues(alpha: .2);

//     final double? effectiveHeight =
//         widget.height ?? (widget.isDescription ? 74.h : null);

//     final Color effectiveTextColor = widget.textColor ?? Colors.black;

//     final Color effectiveHintColor =
//         widget.hintColor ?? Colors.black.withValues(alpha: .4);

//     return Material(
//       elevation: widget.elevation,
//       shadowColor: widget.elevationColor,
//       borderOnForeground: false,
//       color: Colors.transparent,
//       borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (widget.title != null)
//             Row(
//               children: [
//                 Text(
//                   widget.title!,
//                   style: GoogleFonts.jost().copyWith(
//                     fontSize: widget.titleFontSize ?? 14.sp,
//                     color: widget.titleColor ?? Colors.black,
//                     fontWeight: widget.titleFontWeight ?? FontWeight.w500,
//                   ),
//                 ),
//                 if (!widget.isOptional)
//                   Text(
//                     ' *',
//                     style: GoogleFonts.jost().copyWith(
//                       color: widget.titleColor ?? Colors.black,
//                       fontSize: widget.titleFontSize ?? 14.sp,
//                     ),
//                   ),
//               ],
//             ),
//           const SizedBox(height: 8),
//           SizedBox(
//             height: effectiveHeight,
//             child: TextFormField(
//               cursorColor: effectiveBorderColor,
//               onChanged: widget.onChanged,
//               onTap: widget.onTap,
//               onFieldSubmitted: widget.onFieldSubmitted,
//               readOnly: widget.readOnly,
//               controller: widget.controller,
//               minLines: widget.isDescription ? 3 : widget.minLines,
//               maxLines: widget.isDescription ? null : widget.maxLines ?? 1,
//               validator: widget.validator,
//               keyboardType: widget.isEmail
//                   ? TextInputType.emailAddress
//                   : widget.keyboardType,
//               textInputAction: widget.textInputAction,
//               obscureText: widget.isPassWord && isShowPassWord,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               obscuringCharacter: "*",
//               textAlignVertical:
//                   widget.textAlignVertical ?? TextAlignVertical.center,
//               style:
//                   widget.style ??
//                   GoogleFonts.jost().copyWith(
//                     height: 1.5,
//                     fontWeight: FontWeight.w400,
//                     color: effectiveTextColor,
//                   ),
//               decoration: InputDecoration(
//                 hintText: widget.hintText,
//                 hintStyle: GoogleFonts.jost().copyWith(
//                   fontSize: 14.sp,
//                   color: effectiveHintColor,
//                 ),
//                 filled: widget.filled,
//                 fillColor: widget.fillColor ?? Colors.transparent,
//                 contentPadding:
//                     widget.contentPadding ??
//                     const EdgeInsets.symmetric(vertical: 12, horizontal: 12),

//                 prefixIcon: widget.prefix != null
//                     ? Padding(
//                         padding: const EdgeInsets.only(left: 8.0),
//                         child: widget.prefix,
//                       )
//                     : null,

//                 suffixIcon: widget.isPassWord
//                     ? IconButton(
//                         color: effectiveBorderColor,
//                         padding: EdgeInsets.zero,
//                         iconSize: 18,
//                         onPressed: () {
//                           setState(() {
//                             isShowPassWord = !isShowPassWord;
//                           });
//                         },
//                         icon: isShowPassWord
//                             ? Icon(
//                                 Icons.visibility,
//                                 color: AppColors.brown.withValues(alpha: 0.4),
//                               )
//                             : Icon(
//                                 Icons.visibility_off,
//                                 color: AppColors.brown.withValues(alpha: 0.4),
//                               ),
//                       )
//                     : widget.suffixIcon,

//                 prefixIconConstraints:
//                     widget.prefixIconConstraints ??
//                     const BoxConstraints(maxWidth: 40, maxHeight: 40),
//                 suffixIconConstraints:
//                     widget.suffixIconConstraints ??
//                     const BoxConstraints(maxWidth: 40, maxHeight: 40),

//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(color: effectiveBorderColor),
//                   borderRadius: BorderRadius.circular(
//                     widget.borderRadius ?? 12,
//                   ),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: effectiveBorderColor),
//                   borderRadius: BorderRadius.circular(
//                     widget.borderRadius ?? 12,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: effectiveBorderColor,
//                     width: 1.5,
//                   ),
//                   borderRadius: BorderRadius.circular(
//                     widget.borderRadius ?? 12,
//                   ),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.red),
//                   borderRadius: BorderRadius.circular(
//                     widget.borderRadius ?? 12,
//                   ),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.red),
//                   borderRadius: BorderRadius.circular(
//                     widget.borderRadius ?? 12,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
