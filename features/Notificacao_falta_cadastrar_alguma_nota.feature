Feature: Histórico de notificações de pendência de notas

   Scenario: Visualização do histórico de notificações enviadas
      Given existem notificações registradas para os professores "Paulo Borba" e "Ana Silva"
      When o administrador "Carlos Lima" acessa a página de "Histórico de notificações"
      Then são apresentados os registros de "Paulo Borba" e "Ana Silva"
      And cada registro apresenta data, disciplina, turma, motivo e status do envio
      
   Scenario: Visualização dos detalhes de uma notificação enviada
      Given existe uma notificação enviada em "25/08/2026 às 09:00" para o professor "Paulo Borba" da turma "2026.2 de ESS"
      When o administrador "Carlos Lima" solicita os detalhes dessa notificação
      Then são apresentados "João da Silva - Prova 2" e "Maria Souza - Projeto 1" como pendências
      And é apresentado o prazo "31/08/2026 às 23:59"

   Scenario: Filtragem do histórico por professor e disciplina
      Given o histórico possui notificações de "Paulo Borba - ESS" e "Ana Silva - Engenharia de Requisitos"
      When o administrador "Carlos Lima" filtra por professor "Paulo Borba" e disciplina "ESS"
      Then são apresentadas apenas as notificações de "Paulo Borba - ESS"    

   Scenario: Visualização de falha no envio de uma notificação
      Given existe uma tentativa de notificação para "Ana Silva" em "23/08/2026 às 09:00" com status "Falha"
      When o administrador "Carlos Lima" solicita os detalhes dessa tentativa
      Then são apresentados o professor "Ana Silva", a disciplina "Engenharia de Requisitos" e o status "Falha"
      And o motivo apresentado é "Pendência no lançamento de notas" 

   Scenario: Ausência de novo registro após cadastro das notas pendentes
      Given a última notificação de "Paulo Borba" foi registrada em "27/08/2026 às 09:00"
      And todas as notas da turma "2026.2 de ESS" foram cadastradas antes de "28/08/2026 às 09:00"
      When o administrador "Carlos Lima" acessa o histórico após "28/08/2026 às 09:00"
      Then a última notificação apresentada permanece sendo a de "27/08/2026 às 09:00"
      And não existe notificação registrada em "28/08/2026"
      And o sistema mostra uma tela com "última notificação permanece sendo 27/08/2026 às 9:00"
   
   Scenario: Lembrete apresenta detalhes das notas pendentes da turma
      Given "João da Silva" está sem nota em "Prova 2"
      And "Maria Souza" está sem nota em "Projeto 1"
      When um lembrete de notas pendentes é enviado ao professor "Paulo Borba"
      Then o lembrete apresenta "João da Silva - Prova 2" e "Maria Souza - Projeto 1"
      And o lembrete informa o prazo "31/08/2026 às 23:59"