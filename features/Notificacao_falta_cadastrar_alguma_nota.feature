Scenario: Visualização do histórico de notificações enviadas
   Ideia geral: verificar se o administrador consegue acessar a página de histórico e visualizar os registros de notificações já enviadas, 
   contendo data/hora, professor, disciplina, turma, motivo e status do envio.
Scenario: Visualização dos detalhes de uma notificação enviada
   Ideia geral: verificar se, ao selecionar uma notificação específica, a GUI apresenta os alunos e avaliações que estavam sem nota 
   no momento do envio, além do professor destinatário, disciplina, turma, prazo e demais dados relevantes.
Scenario: Filtragem do histórico por professor e disciplina
   Ideia geral: verificar se o administrador consegue filtrar o histórico para visualizar somente as notificações enviadas para um professor
   e/ou uma disciplina específica.
Scenario: Visualização de falha no envio de uma notificação
   Ideia geral: verificar se, quando uma tentativa de envio de e-mail falha, a GUI registra e apresenta essa ocorrência com status de falha,
   incluindo professor, data/hora, disciplina, turma e motivo.
Scenario: Ausência de novo envio quando todas as notas já estão cadastradas
   Ideia geral: verificar se, quando chega o momento em que o sistema faria uma nova tentativa de envio, mas todas as notas dos alunos 
   já foram cadastradas, nenhuma nova notificação é enviada e nenhum novo registro de envio é criado no histórico.