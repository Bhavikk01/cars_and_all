enum TransmissionType {
  MANUAL,
  AUTOMATIC,
  IMT
}

TransmissionType transmissionTypeToEnum(String transmissionType) {
  switch (transmissionType) {
    case 'Manual':
      return TransmissionType.MANUAL;
    case 'Automatic':
      return TransmissionType.AUTOMATIC;
    case 'IMT':
      return TransmissionType.IMT;
    default:
      return TransmissionType.MANUAL;
  }
}

String transmissionTypeToString(TransmissionType transmissionType) {
  switch (transmissionType) {
    case TransmissionType.MANUAL:
      return 'Manual';
    case TransmissionType.AUTOMATIC:
      return 'Automatic';
    case TransmissionType.IMT:
      return 'IMT';
  }
}
