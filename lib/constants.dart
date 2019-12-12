import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final mileageFormatter = new MaskTextInputFormatter(
    mask: '###.###', filter: {"#": RegExp(r'[0-9]')});

final mileageFormatterLow =
    new MaskTextInputFormatter(mask: '##.###', filter: {"#": RegExp(r'[0-9]')});

final fuelPriceFormatter =
    new MaskTextInputFormatter(mask: '#.##', filter: {"#": RegExp(r'[0-9]')});
