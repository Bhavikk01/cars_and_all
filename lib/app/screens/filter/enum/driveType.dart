enum DriveType {
  RWD,
  FWD,
  AWD,
  WD4,
}

DriveType driveTypeToEnum(String driveType) {
  switch (driveType) {
    case 'RWD':
      return DriveType.RWD;
    case 'FWD':
      return DriveType.FWD;
    case 'AWD':
      return DriveType.AWD;
    case '4WD':
      return DriveType.WD4;
    default:
      return DriveType.RWD;
  }
}

String driveTypeToString(DriveType driveType) {
  switch (driveType) {
    case DriveType.RWD:
      return 'RWD';
    case DriveType.FWD:
      return 'FWD';
    case DriveType.AWD:
      return 'AWD';
    case DriveType.WD4:
      return '4WD';
  }
}
