class CountryModel {
    String countryCode;
    String countryName;
    String diallingCode;

    CountryModel({this.countryCode, this.countryName, this.diallingCode});

    factory CountryModel.fromJson(Map<String, dynamic> json) {
        return CountryModel(
            countryCode: json['country_code'], 
            countryName: json['country_name'], 
            diallingCode: json['dialling_code'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['country_code'] = this.countryCode;
        data['country_name'] = this.countryName;
        data['dialling_code'] = this.diallingCode;
        return data;
    }
}