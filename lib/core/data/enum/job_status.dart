enum JobStatus {
  open,
  closed,
  pending,
}

extension JobStatusExtension on JobStatus {
  String toShortString() {
    return toString().split('.').last;
  }

  static JobStatus fromString(String status) {
    return JobStatus.values.firstWhere((e) => e.toShortString() == status);
  }
}