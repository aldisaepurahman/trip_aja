class QuestionnaireReq {
  double member;
  double sport;
  double days;
  double time;
  double gender;
  double price;
  double berbelanja;
  double petualang;
  double foto;
  double jalan;
  double selfie;
  double museum;
  double pemandangan;
  double festival;
  double anak;
  double dewasa;
  double lansia;
  double remaja;
  double pertengahan;

  QuestionnaireReq(
      {this.member = 0.0,
      this.sport = 0.0,
      this.days = 0.0,
      this.time = 0.0,
      this.gender = 0.0,
      this.price = 0.0,
      this.berbelanja = 0.0,
      this.petualang = 0.0,
      this.foto = 0.0,
      this.jalan = 0.0,
      this.selfie = 0.0,
      this.museum = 0.0,
      this.pemandangan = 0.0,
      this.festival = 0.0,
      this.anak = 0.0,
      this.dewasa = 0.0,
      this.lansia = 0.0,
      this.remaja = 0.0,
      this.pertengahan = 0.0});

  Map<String, dynamic> toJson() {
    return {
      "member": member,
      "sport": sport,
      "days": days,
      "time": time,
      "gender": gender,
      "price": price,
      "berbelanja": berbelanja,
      "petualang": petualang,
      "foto": foto,
      "jalan": jalan,
      "selfie": selfie,
      "museum": museum,
      "pemandangan": pemandangan,
      "festival": festival,
      "anak": anak,
      "dewasa": dewasa,
      "lansia": lansia,
      "remaja": remaja,
      "pertengahan": pertengahan
    };
  }
}
