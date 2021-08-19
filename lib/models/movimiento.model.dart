class MovimientoModel{
  String ? id;
  DateTime fecha;
  String hora;
  String alerta;

  MovimientoModel({
    this.id, 
    required this.fecha, 
    required this.hora,
    required this.alerta,
  });

  factory MovimientoModel.fromMapJson(Map<String,dynamic>data)=>MovimientoModel(
    id: data['id'],
    fecha: DateTime.parse('fecha'),
    hora: data['hora'],
    alerta: data['alerta'],
  );


  Map<String, dynamic> toJson() => {
   'fecha': "${fecha.year.toString().padLeft(4, '0')}-${fecha.month.toString().padLeft(2, '0')}-${fecha.day.toString().padLeft(2, '0')}",
    'hora': hora,
   'alerta': alerta,
  };
}