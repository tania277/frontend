import 'dart:convert';

List<Movimiento> movimientoFromJson(String str) => List<Movimiento>.from(json.decode(str).map((x) => Movimiento.fromJson(x)));

String movimientoToJson(List<Movimiento> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movimiento {
    Movimiento({
        this.id,
        this.fecha,
        this.hora,
        this.alerta,
        this.v,
    });

    String id;
    DateTime fecha;
    String hora;
    String alerta;
    int v;

    factory Movimiento.fromJson(Map<String, dynamic> json) => Movimiento(
        id: json["_id"],
        fecha: DateTime.parse(json["fecha"]),
        hora: json["hora"],
        alerta: json["alerta"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "fecha": "${fecha.year.toString().padLeft(4, '0')}-${fecha.month.toString().padLeft(2, '0')}-${fecha.day.toString().padLeft(2, '0')}",
        "hora": hora,
        "alerta": alerta,
        "__v": v,
    };
  static Future<List<Movimiento>> movimientoFromSnapshot(List temp) {}
}
