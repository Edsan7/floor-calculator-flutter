class ValidatorHelper {
  static String isEmptyOrNegative(String value){
    if (value.isEmpty)  return 'Preencha o campo';
    else if(double.tryParse(value) <= 0 ?? 0.0) return 'Valor inválido';
    else return null;
  }
}