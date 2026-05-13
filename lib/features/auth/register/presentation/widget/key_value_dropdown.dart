import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyValueDropdown extends StatelessWidget {
  final String? title;
  final Map<String, String> items;
  final String? selectedKey;
  final String hint;
  final Function(String? key) onChanged;

  const KeyValueDropdown({
    super.key,
    this.title,
    required this.items,
    required this.onChanged,
    this.selectedKey,
    this.hint = 'Select',
  });

  @override
  Widget build(BuildContext context) {
    String? normalizedSelectedKey = selectedKey;

    if (normalizedSelectedKey != null && normalizedSelectedKey.isNotEmpty) {
      final hasSelectedKey = items.containsKey(normalizedSelectedKey);

      if (!hasSelectedKey) {
        final matchedEntry = items.entries
            .where((entry) => entry.value == normalizedSelectedKey)
            .toList();

        if (matchedEntry.length == 1) {
          normalizedSelectedKey = matchedEntry.first.key;
        } else {
          normalizedSelectedKey = null;
        }
      }
    } else {
      normalizedSelectedKey = null;
    }

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(color: Colors.black),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null && title!.trim().isNotEmpty) ...[
          Text(
            title!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 6.h),
        ],

        DropdownButtonFormField<String>(
          value: normalizedSelectedKey,
          hint: const Text("Select", style: TextStyle(color: Colors.black)),

          // ✅ dropdown opened background
          dropdownColor: Colors.white,

          // ✅ arrow icon color
          iconEnabledColor: Colors.black,

          // ✅ selected + typed text color
          style: const TextStyle(color: Colors.black, fontSize: 14),

          items: items.entries.map((entry) {
            return DropdownMenuItem<String>(
              value: entry.key,
              child: Text(
                entry.value,
                style: const TextStyle(
                  color: Colors.black, // ✅ list text color
                  fontSize: 14,
                ),
              ),
            );
          }).toList(),

          onChanged: onChanged,

          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white, // ✅ field background
            border: border,
            enabledBorder: border,
            focusedBorder: border,
            disabledBorder: border,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
          ),
        ),
      ],
    );
  }
}
