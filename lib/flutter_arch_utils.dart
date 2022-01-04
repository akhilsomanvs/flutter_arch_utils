library flutter_arch_utils;

import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'arch_utils/enums/device_screen_type.dart';
import 'arch_utils/utils/sizing_information.dart';
import 'arch_utils/utils/ui_utils.dart';

part 'arch_utils/utils/size_config.dart';

part 'arch_utils/widgets/orientation_layout.dart';

part 'arch_utils/widgets/responsive_safe_area.dart';

part 'arch_utils/widgets/responsize_builder.dart';

part 'arch_utils/widgets/screen_type_layout.dart';

part 'arch_utils/widgets/spacing_widgets.dart';

part 'arch_utils/commonUtils/app_utils.dart';

part 'arch_utils/commonUtils/date_utils.dart';

part 'arch_utils/commonUtils/formfield_validators.dart';

part 'arch_utils/commonUtils/json_utils.dart';

part 'arch_utils/commonUtils/list_utils.dart';

part 'arch_utils/commonUtils/string_utils.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
