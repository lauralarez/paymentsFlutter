import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.length > 10 && RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
       //email.contains('@') && email.contains('@') && email.length > 10) {
        sink.add(email); 
      }
      else {
        sink.addError('El correo ingresado es invalido');
      }
    }
  );

  final validateName = StreamTransformer<String, String>.fromHandlers(
    handleData: (name, sink) {
      if (name.length > 3 && RegExp(r"(^[a-zA-Z ]*$)").hasMatch(name)) {
        sink.add(name); 
      }
      else {
        sink.addError('Nombre invalido');
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length > 5) {
        sink.add(password);
      }
      else {
        sink.addError('La clave debe ser mayor a seis caracteres');
      }
    }
  );

  final validateDirection = StreamTransformer<String, String>.fromHandlers(
    handleData: (direction, sink) {
      if (direction.length > 15) {
        sink.add(direction);
      }
      else {
        sink.addError('La direccion debe ser mayor a quince caracteres');
      }
    }
  );

  final validateNumber = StreamTransformer<String, String>.fromHandlers(
    handleData: (number, sink) {
      if (RegExp(r"^(?:[+0]9)?[0-9]{10,12}$").hasMatch(number)) {
        sink.add(number);
      }
      else {
        sink.addError('Numero invalido');
      }
    }
  );
}