import 'package:flutter/material.dart' hide FormField;
import 'package:test_app/contents/continue_button.dart';
import 'package:test_app/crianca/cadastro_diagnostico.dart';

import '../contents/app_colors.dart';
import '../contents/child_step_indicator.dart';
import '../contents/form_field.dart';

class CadastroCriancaPage extends StatelessWidget {
  const CadastroCriancaPage({super.key});

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
                    currentStep: 1,
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // TÍTULO DA ETAPA
                  // =========================
                  const Text(
                    'Informações básicas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // =========================
                  // FOTO
                  // =========================
                  Center(
                    child: Column(
                      children: [

                        Stack(
                          clipBehavior: Clip.none,
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xFFD9F2FF),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.person,
                                size: 45,
                                color: Color(0xFF5796E8),
                              ),
                            ),

                            Positioned(
                              right: -3,
                              bottom: -3,
                              child: Container(
                                width: 22,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.camera_alt,
                                  size: 14,
                                  color: Color(0xFF5796E8),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 7),

                        const Text(
                          'Adicionar foto',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF438FD8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // =========================
                  // NOME COMPLETO
                  // =========================
                  const Text(
                    'Nome completo da criança',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const FormField(
                    hint: 'Digite o nome completo',
                    icon: Icons.person,
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // NOME SOCIAL
                  // =========================
                  const Text(
                    'Nome social (opcional)',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const FormField(
                    hint: 'Como prefere chamar?',
                    icon: Icons.person,
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // DATA DE NASCIMENTO
                  // =========================
                  const Text(
                    'Data de nascimento',
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
                  // SEXO
                  // =========================
                  const Text(
                    'Sexo',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryText,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const FormField(
                    hint: 'Selecione',
                    icon: Icons.keyboard_arrow_down,
                  ),

                  const SizedBox(height: 30),

                  // =========================
                  // CONTINUAR
                  // =========================
                  ContinueButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CadastroDiagnosticoPage(),
                        ),
                      );
                    },
                  ),

                  // Espaço inferior
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


