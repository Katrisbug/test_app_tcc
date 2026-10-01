import 'package:flutter/material.dart' hide FormField;

import '../contents/app_colors.dart';
import '../contents/child_step_indicator.dart';
import '../contents/form_field.dart';
import '../contents/continue_button.dart';

class CadastroDiagnosticoPage extends StatelessWidget {
  const CadastroDiagnosticoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Stack(
        children: [

          // =========================
          // CONTEÚDO
          // =========================
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // =========================
                  // TOPO
                  // =========================
                  Row(
                    children: [

                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 22,
                        ),
                      ),

                      const Spacer(),

                      Image.asset(
                        'assets/logo.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),

                  // =========================
                  // TÍTULO
                  // =========================
                  const Text(
                    'Cadastro da criança',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 3),

                  const Text(
                    'Vamos conhecer melhor para cuidar\n'
                    'com mais precisão',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // =========================
                  // ETAPAS
                  // =========================
                  const ChildStepIndicator(
                    currentStep: 2,
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // TÍTULO DA ETAPA
                  // =========================
                  const Text(
                    'Sobre o diagnóstico',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    'Essas informações nos ajudam a personalizar\n'
                    'o monitoramento e os alertas.',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // =========================
                  // DIAGNÓSTICO PRINCIPAL
                  // =========================
                  const Text(
                    'Diagnóstico principal',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const FormField(
                    hint: 'Selecione o diagnóstico',
                    icon: Icons.keyboard_arrow_down,
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // NÍVEL DE SUPORTE
                  // =========================
                  const Text(
                    'Nível de suporte (opcional)',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const FormField(
                    hint: 'Selecione o nível',
                    icon: Icons.keyboard_arrow_down,
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // DATA DO DIAGNÓSTICO
                  // =========================
                  const Text(
                    'Quando recebeu o diagnóstico?',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const FormField(
                    hint: 'dd/mm/aaaa',
                    icon: Icons.calendar_today_outlined,
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // LAUDOS
                  // =========================
                  const Text(
                    'Possui laudos ou relatórios?',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 5),

                  SizedBox(
                    width: double.infinity,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {
                        // Futuramente abrir seleção de arquivo
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5796E8),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: const Text(
                        'Inserir Laudo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // =========================
                  // CONTINUAR
                  // =========================
                  ContinueButton(
                    onPressed: () {
                      // Aqui você irá abrir a etapa 3
                    },
                  ),

                  // Permite o conteúdo passar pela área das ondas
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),

          // =========================
          // ONDAS
          // =========================
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: IgnorePointer(
              child: Image.asset(
                'assets/ondas_fundo.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}