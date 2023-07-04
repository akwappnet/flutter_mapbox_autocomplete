part of flutter_mapbox_autocomplete;

class CustomTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final TextInputType inputType;
  final TextEditingController? textController;
  final String? hintText;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final TextInputAction keyboardAction;
  final FocusNode? focusNode;
  final Function? validator;
  final Function? onSaved;
  final Function? onTap;
  final Function? onChanged;
  final Function? onFieldSubmitted;
  final Function? onEditComplete;
  final TextStyle? textStyle;

  CustomTextField({
    required this.hintText,
    this.initialValue,
    this.textController,
    this.inputType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines,
    this.keyboardAction = TextInputAction.next,
    this.focusNode,
    this.validator,
    this.onSaved,
      this.onTap,
      this.onChanged,
      this.onFieldSubmitted,
      this.onEditComplete,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    // TextFormField(
    //   validator: validator ?? MultiValidator([]),
    //   onChanged: onChanged,
    //   maxLength: maxLength ?? 100,
    //   controller: editingController,
    //   cursorColor: const Color(0xFF2B547E),
    //   keyboardType: textInputType ?? TextInputType.text,
    //   obscureText: obscureText ?? false,
    //   style: changeTextStyle
    //       ? textBodyStyle.copyWith(fontSize: 14)
    //       : descriptionTextStyle.copyWith(
    //           color: Theme.of(context).primaryColorDark,
    //         ),
    //   decoration: InputDecoration(
    //     labelText: labelText ?? "",
    //     // alignLabelWithHint: true,
    //     errorStyle: Theme.of(context)
    //         .textTheme
    //         .bodyText1
    //         ?.copyWith(color: Colors.red, fontSize: 12),

    //     hintText: hintText,
    //     // hintStyle: TextStyle(color: Colors.black),
    //     labelStyle: changeTextStyle
    //         ? textBodyStyle.copyWith(fontSize: 14)
    //         : textMediumStyle,
    //     hintStyle: changeTextStyle
    //         ? textBodyStyle.copyWith(fontSize: 13)
    //         : textMediumStyle,
    //     alignLabelWithHint: true,
    //     counterText: '',
    //     prefixIcon: prefixIcon,
    //     border: border ??
    //         OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(8),
    //           borderSide: const BorderSide(
    //             color: COLOR_BORDER,
    //           ),
    //         ),
    //     enabledBorder: enabledBorder ??
    //         OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(8),
    //           borderSide: const BorderSide(
    //             color: COLOR_BORDER,
    //           ),
    //         ),
    //     errorBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(8),
    //       borderSide: const BorderSide(
    //         color: Colors.red,
    //       ),
    //     ),
    //     contentPadding: contentPadding,
    //     errorMaxLines: errorMaxLines ?? 1,
    //     focusedBorder: focusedBorder ??
    //         OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(8),
    //           borderSide: const BorderSide(
    //             color: COLOR_BORDER,
    //           ),
    //         ),
    //     suffixIcon: obscureText != null
    //         ? GestureDetector(
    //             onTap: onTogglePassword,
    //             child: Icon(
    //               (obscureText ?? false)
    //                   ? Icons.visibility_off_outlined
    //                   : Icons.visibility_outlined,
    //               color: Colors.black,
    //             ),
    //           )
    //         : suffixIcon,
    //   ),
    //   minLines: minLines ?? 1,
    //   maxLines: maxLines ?? 1,
    // );
    return TextFormField(
      initialValue: initialValue,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: "Location",
        // alignLabelWithHint: true,
        errorStyle: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: Colors.red, fontSize: 12),

        hintText: hintText,
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
    
        alignLabelWithHint: false,
        counterText: '',
        prefixIcon: prefixIcon,
        border: InputBorder.none,
        //  OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(8),
        //   borderSide: BorderSide(
        //     color: Colors.black,
        //   ),
        // ),
        enabledBorder: InputBorder.none,

        //  OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(8),
        //   borderSide: BorderSide(
        //     color: Colors.black,
        //   ),
        // ),
        errorBorder: InputBorder.none,
        // OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(8),
        //   borderSide: const BorderSide(
        //     color: Colors.red,
        //   ),
        // ),
        // contentPadding: contentPadding,
        // errorMaxLines: errorMaxLines ?? 1,
        focusedBorder: InputBorder.none,
        // OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(8),
        //   borderSide: const BorderSide(
        //     color: Colors.black,
        //   ),
        // ),
        // suffixIcon: obscureText != null
        //     ? GestureDetector(
        //         // onTap: onTogglePassword,
        //         child: Icon(
        //           (obscureText ?? false)
        //               ? Icons.visibility_off_outlined
        //               : Icons.visibility_outlined,
        //           color: Colors.black,
        //         ),
        //       )
        //     : suffixIcon,
      ),
      enabled: enabled,
      obscureText: obscureText,
      readOnly: readOnly,
      keyboardType: inputType,
      textInputAction: keyboardAction,
      validator: validator as String? Function(String?)?,
      onSaved: onSaved as void Function(String?)?,
      focusNode: focusNode,
      onTap: onTap as void Function()?,
      onChanged: onChanged as void Function(String)?,
      onFieldSubmitted: onFieldSubmitted as void Function(String)?,
      controller: textController,
      onEditingComplete: onEditComplete as void Function()?,
      maxLines: obscureText ? 1 : maxLines,
    );
  }
}
