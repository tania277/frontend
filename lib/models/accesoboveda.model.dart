class AccesoModel{
  String? id;
  DateTime fecha;
  String hora;
  String estado;

  AccesoModel({
    this.id, 
    required this.fecha, 
    required this.hora,
    required this.estado,
  });

  factory AccesoModel.fromMapJson(Map<String,dynamic>data)=>AccesoModel(
    id: data['id'],
    fecha: DateTime.parse('fecha'),
    hora: data['hora'],
    estado: data['estado'],
  );


  Map<String, dynamic> toJson() => {
   'fecha': "${fecha.year.toString().padLeft(4, '0')}-${fecha.month.toString().padLeft(2, '0')}-${fecha.day.toString().padLeft(2, '0')}",
    'hora': hora,
   'estado': estado,
  };
}