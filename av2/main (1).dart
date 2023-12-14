import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


Future<void> main() async {
  final url = Uri.parse('http://www.ifce.edu.br');

  try {
    var  http = new http(url);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('Dados recebidos: $data');
    } else {
      throw Exception('Erro na resposta do servidor: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Erro de conexão: ${e.message}');
  } on HttpException catch (e) {
    print('Erro HTTP: ${e.message}');
  } on FormatException catch (e) {
    print('Resposta inválida do servidor: ${e.message}');
  } catch (e) {
    print('Erro inesperado: ${e.toString()}');
  }
}