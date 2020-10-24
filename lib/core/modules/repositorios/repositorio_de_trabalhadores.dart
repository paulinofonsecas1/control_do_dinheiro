import 'package:control_do_dinheiro/core/modules/entitys/trabalhador.dart';
import 'package:control_do_dinheiro/core/modules/utils/forma_de_busca.dart';
import 'package:dartz/dartz.dart';

abstract class IRepositorioDeTrabalhadores {
  Future<Either<Exception, bool>> cadastrar(Trabalhador trabalhador);
  Future<Either<Exception, Trabalhador>> buscarTrabalhadorPor(
      FormaDeBusca formaDeBusca);
  Future<Either<Exception, Trabalhador>> eliminarUmTrabalhador(String bi);
  Future<Either<Exception, List<Trabalhador>>> buscarTodosOsTrabalhadores();
}
