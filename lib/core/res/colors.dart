import 'dart:ui';

class Colors {
  const Colors._();

  static const gradient = [
    Color(0xFFFDEBFF),
    Color(0xFFF9C2FF),
    Color(0xFFFFFFFF),
    Color(0xFFF6F8FA),
  ];

  // Neutral Colors
  static const Color neutral900 = Color(0xFF0A0D14);
  static const Color neutral800 = Color(0xFF161922);
  static const Color neutral700 = Color(0xFF20232D);
  static const Color neutral600 = Color(0xFF31353F);
  static const Color neutral500 = Color(0xFF525866);
  static const Color neutral400 = Color(0xFF868C98);
  static const Color neutral300 = Color(0xFFCDD0D5);
  static const Color neutral200 = Color(0xFFE2E4E9);
  static const Color neutral100 = Color(0xFFF6F8FA);
  static const Color neutral0 = Color(0xFFFFFFFF);

  // Blue Colors
  static const Color blueDarker = Color(0xFF162664);
  static const Color blueDark = Color(0xFF253EA7);
  static const Color blueBase = Color(0xFF375DFB);
  static const Color blueLight = Color(0xFFC2D6FF);
  static const Color blueLighter = Color(0xFFEBF1FF);

  // Orange Colors
  static const Color orangeDarker = Color(0xFF6E330C);
  static const Color orangeDark = Color(0xFFC2540A);
  static const Color orangeBase = Color(0xFFF17B2C);
  static const Color orangeLight = Color(0xFFFFDAC2);
  static const Color orangeLighter = Color(0xFFFEF3EB);

  // Yellow Colors
  static const Color yellowDarker = Color(0xFF693D11);
  static const Color yellowDark = Color(0xFFB47818);
  static const Color yellowBase = Color(0xFFF2AE40);
  static const Color yellowLight = Color(0xFFFBDFB1);
  static const Color yellowLighter = Color(0xFFFEF7EC);

  // Red Colors
  static const Color redDarker = Color(0xFF710E21);
  static const Color redDark = Color(0xFFAF1D38);
  static const Color redBase = Color(0xFFDF1C41);
  static const Color redLight = Color(0xFFF8C9D2);
  static const Color redLighter = Color(0xFFFDEDF0);

  // Green Colors
  static const Color greenDarker = Color(0xFF176448);
  static const Color greenDark = Color(0xFF2D9F75);
  static const Color greenBase = Color(0xFF38C793);
  static const Color greenLight = Color(0xFFCBF5E5);
  static const Color greenLighter = Color(0xFFEFFAF6);

  // Purple Colors
  static const Color purpleDarker = Color(0xFF2B1664);
  static const Color purpleDark = Color(0xFF5A36BF);
  static const Color purpleBase = Color(0xFF6E3FF3);
  static const Color purpleLight = Color(0xFFCAC2FF);
  static const Color purpleLighter = Color(0xFFEEEBFF);

  // Pink Colors
  static const Color pinkDarker = Color(0xFF620F6C);
  static const Color pinkDark = Color(0xFF9C23A9);
  static const Color pinkBase = Color(0xFFE255F2);
  static const Color pinkLight = Color(0xFFF9C2FF);
  static const Color pinkLighter = Color(0xFFFDEBFF);

  // Teal Colors
  static const Color tealDarker = Color(0xFF164564);
  static const Color tealDark = Color(0xFF1F87AD);
  static const Color tealBase = Color(0xFF35B9E9);
  static const Color tealLight = Color(0xFFC2EFFF);
  static const Color tealLighter = Color(0xFFEBFAFF);

  // Primary Color Tokens
  static const Color primaryDarker = blueDarker;
  static const Color primaryDark = blueDark;
  static const Color primaryBase = blueBase;
  static const Color primaryLight = blueLight;
  static const Color primaryLighter = blueLighter;

  // Background Color Tokens
  static const Color bgStrong900 = neutral900;
  static const Color bgSurface700 = neutral900;
  static const Color bgSoft200 = neutral200;
  static const Color bgWeak100 = neutral100;
  static const Color bgWhite0 = neutral0;

  // Text Color Tokens
  static const Color textMain900 = neutral900;
  static const Color textSub500 = neutral500;
  static const Color textSoft400 = neutral400;
  static const Color textDisabled300 = neutral300;
  static const Color textWhite0 = neutral0;

  // Stroke Color Tokens
  static const Color strokeStrong900 = neutral900;
  static const Color strokeSub300 = neutral300;
  static const Color strokeSoft200 = neutral200;
  static const Color strokeDisabled100 = neutral100;
  static const Color strokeWhite0 = neutral0;

  // Icon Color Tokens
  static const Color iconStrong900 = neutral900;
  static const Color iconSub500 = neutral500;
  static const Color iconSoft400 = neutral400;
  static const Color iconDisabled300 = neutral300;
  static const Color iconWhite0 = neutral0;

  // State Color Tokens
  static const Color stateSuccess = greenBase;
  static const Color stateWarning = orangeBase;
  static const Color stateError = redBase;
  static const Color stateInformation = blueBase;
  static const Color stateAway = yellowBase;
  static const Color stateFeature = purpleBase;
  static const Color stateNeutral = neutral400;
  static const Color stateVerified = tealBase;
}
