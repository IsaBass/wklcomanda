import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors_concil.dart';

class TextStylesCONCIL {
  //
  static final headline6white = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColorsCONCIL.lightOnPrimarySurface,
  );
  static final headline6primary = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColorsCONCIL.lightPrimary,
  );
  static final headline6black = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColorsCONCIL.lightOnSurface,
  );
  //
  static final buttonOnPrimary = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColorsCONCIL.lightOnPrimary,
    letterSpacing: 1.5,
  );
  static final buttonOnSurface = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColorsCONCIL.lightOnSurface,
    letterSpacing: 1.5,
  );
  //
  static final subtitle1 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColorsCONCIL.lightOnSurface,
  );
  static final subtitle2 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColorsCONCIL.lightOnSurface,
  );
  static final caption = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColorsCONCIL.lightOnSurface.withOpacity(0.6),
    letterSpacing: 0.5,
  );

  static final body1 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColorsCONCIL.lightOnSurface,
  );
  static final body2 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColorsCONCIL.lightOnSurface.withOpacity(0.6),
    letterSpacing: 0.25,
  );
  static final overline = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColorsCONCIL.lightOnSurface.withOpacity(0.6),
    letterSpacing: 1.5,
  );
}
