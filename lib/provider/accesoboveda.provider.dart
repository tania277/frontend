import 'dart:convert';

List<Accesoboveda> accesobovedaFromJson(String str) => List<Accesoboveda>.from(json.decode(str).map((x) => Accesoboveda.fromJson(x)));

String accesobovedaToJson(List<Accesoboveda> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Accesoboveda {
    Accesoboveda({
        this.id,
        this.fecha,
        this.hora,
        this.estado,
        this.v,
    });

    String ?id;
    DateTime? fecha;
    String ?hora;
    String ?estado;
    int ?v;

    factory Accesoboveda.fromJson(Map<String, dynamic> json) => Accesoboveda(
        id: json["_id"],
        fecha: DateTime.parse(json["fecha"]),
        hora: json["hora"],
        estado: json["estado"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "fecha": "${fecha.year.toString().padLeft(4, '0')}-${fecha.month.toString().padLeft(2, '0')}-${fecha.day.toString().padLeft(2, '0')}",
        "hora": hora,
        "estado": estado,
        "__v": v,
    };
  static Future<List<Accesoboveda>> accesobovedaFromSnapshot(List temp) {}
}
