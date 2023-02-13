class SignUpBody {
  String phoneNumber;

  SignUpBody({required this.phoneNumber});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['phone'] = phoneNumber;

    return data;
  }
}
