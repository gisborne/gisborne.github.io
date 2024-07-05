import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

void gatherLicenses() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
}