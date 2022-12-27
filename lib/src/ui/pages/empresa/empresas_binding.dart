
import 'package:auth_example/src/ui/pages/empresa/empresas_controller.dart';
import 'package:get/get.dart';

class EmpresaBinding implements Bindings {
  const EmpresaBinding();

  @override
  void dependencies() {
    Get.lazyPut<EmpresaController>(() => EmpresaController());
  }
}
