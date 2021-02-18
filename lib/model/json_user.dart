class JsonUser {
  String Message;
  String KaryawanID;
  String KarayawanNama;
  int KaryawanType;
  int KaryawanStatus;
  String Token;
  String Status;

  JsonUser({
    this.Message,
    this.KaryawanID,
    this.KarayawanNama,
    this.KaryawanType,
    this.KaryawanStatus,
    this.Token,
    this.Status,
  });

  factory JsonUser.fromJson(Map<String, dynamic> parsedJson) {
    return JsonUser(
      Message: parsedJson['message'],
      KaryawanID: parsedJson['karyawan_id'],
      KarayawanNama: parsedJson['karyawan_nama'],
      KaryawanType: parsedJson['karyawan_type'],
      KaryawanStatus: parsedJson['karyawan_status'],
      Token: parsedJson['token'],
      Status: parsedJson['status'],
    );
    
  }
}
