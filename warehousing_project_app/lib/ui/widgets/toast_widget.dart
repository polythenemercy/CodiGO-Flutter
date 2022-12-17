//Procedimiento - Importar referencias:
import 'package:flutter/material.dart';
import 'package:warehousing_project_app/ui/widgets/general_widget.dart';

//Clase - Toast:
SnackBar ToastWidget (String message, bool type) {

  //Procedimiento - Retornar elemento:
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0)
    ),
    backgroundColor: (type) ? Colors.green : Colors.redAccent,
    content: Row(
      children: [
        Icon(
          (type) ? Icons.check : Icons.error_outline,
          color: Colors.white,
        ),
        spacingWidth12,
        Text(
          message,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );

}

