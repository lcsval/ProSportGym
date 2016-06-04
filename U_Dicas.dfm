object F_Dicas: TF_Dicas
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dicas'
  ClientHeight = 390
  ClientWidth = 857
  Color = clBtnFace
  Constraints.MinHeight = 418
  Constraints.MinWidth = 663
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 860
    Height = 380
    HelpType = htKeyword
    BorderStyle = bsNone
    Constraints.MinHeight = 390
    Constraints.MinWidth = 649
    DoubleBuffered = False
    Font.Charset = JOHAB_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    IntegralHeight = True
    ItemHeight = 20
    Items.Strings = (
      
        '                                DICAS DE AJUDA E SUPORTE PARA US' +
        'AR O SISTEMA PROSOFT'
      ''
      
        '      O sistema funciona seguindo a estrutura b'#225'sica da regra de' +
        ' neg'#243'cio, conforme o que foi planejado para a '
      'administra'#231#227'o da academia.'
      '      O usu'#225'rio e a senha padr'#227'o do sistema s'#227'o admin/admin.  '
      
        '      O sistema foi constru'#237'do para ajudar o usu'#225'rio no seu dia-' +
        'a-dia, prezando ser intuitivo e pr'#225'tico ao mesmo '
      'tempo.'
      
        '      Um usu'#225'rio do sistema '#233' um funcion'#225'rio. Todo funcion'#225'rio c' +
        'adastrado no sistema possui um '#8220'login'#8221' associado. '
      
        '      Al'#233'm disso, cada funcion'#225'rio possui determinados acessos c' +
        'oncedidos '#224' ele. Assim, cada funcion'#225'rio poder'#225
      
        'ver somente as telas que a ele forem dadas a permiss'#227'o de acesso' +
        '.'
      
        '      As telas de cadastros s'#227'o todas constru'#237'das de forma padro' +
        'nizada, intuitiva e din'#226'mica, fazendo com que os '
      
        'bot'#245'es, as fun'#231#245'es e cores utilizadas na tela ajudem o usu'#225'rio a' +
        ' entender o que se pede com facilidade.'
      
        '      Os campos na cor cinza significam que o usu'#225'rio n'#227'o tem pe' +
        'rmiss'#227'o para alter'#225'-los, pois os mesmos s'#227'o de '
      'controle do cadastro e utilizados para processos internos.'
      
        '       Os campos na cor amarela significam que o usu'#225'rio tem obr' +
        'igatoriamente que inform'#225'-los. S'#227'o informa'#231#245'es '
      
        'vitais que sem elas o fluxo de informa'#231#227'o n'#227'o funcionar'#225' correta' +
        'mente.'
      
        '      Todas as telas t'#234'm tamanho m'#237'nimo pr'#233'-determinadas. A posi' +
        #231#227'o, o tamanho e o estado que elas est'#227'o '
      
        'sempre ser'#227'o salvas automaticamente. Assim, o usu'#225'rio sempre enc' +
        'ontrar'#225' as telas da mesma maneira que '
      
        'as deixou. Em todas as telas de cadastro '#233' poss'#237'vel filtrar as i' +
        'nforma'#231#245'es por todos os campos que existirem '
      
        'na tela. Caso seja necess'#225'rio um filtro mais avan'#231'ado, como por ' +
        'exemplo, por data, existe a op'#231#227'o do '#8220'filtro '
      
        'avan'#231'ado'#8221' que auxilia o usu'#225'rio a realiz'#225'-la de forma r'#225'pida e p' +
        'r'#225'tica.'
      
        '      Tamb'#233'm '#233' poss'#237'vel exportar as informa'#231#245'es do sistema para ' +
        'o Excel, no formato .csv.'
      
        '      Basta filtrar os dados, clicar no bot'#227'o '#8220'Exportar'#8221' e selec' +
        'ionar o nome e o local para salvar o arquivo.'
      
        'Os dados que ser'#227'o exportados ser'#227'o sempre os dados que estivere' +
        'm sendo visualizados na grade.'
      
        '      Clicando no bot'#227'o '#8220'Relat'#243'rio'#8221', o usu'#225'rio consegue imprimir' +
        ' a lista de informa'#231#245'es que estiver sendo'
      
        'visualizada na grade. '#201' poss'#237'vel alterar o logo que aparece em c' +
        'ada relat'#243'rio. Para isto, basta trocar a imagem'
      
        'que fica na pasta do execut'#225'vel, que se chama logorel.bmp. Atual' +
        'ize-a de forma a deixa-la com o mesmo nome e'
      'formato de arquivo.'
      #9
      '- Configurando Usu'#225'rio e Senha'
      'Acessar: Arquivo > Configurar Usu'#225'rio/Senha.'
      
        'O sistema trar'#225' por padr'#227'o o usu'#225'rio que estiver logado no siste' +
        'ma. Basta digitar uma nova senha, a confirma'#231#227'o'
      'da mesma e salv'#225'-la.'
      #9#9
      ' - Cadastro de Funcion'#225'rios'
      #9'Acessar: Cadastro > Funcion'#225'rio.'
      
        #9'Preencha os dados conforme solicitado e os salve. Configure a n' +
        'ova senha e as permiss'#245'es utilizando as'
      ' dicas desse manual.'
      #9
      ' - Definir permiss'#245'es para o funcion'#225'rio cadastrado'
      #9'Acessar: Configura'#231#227'o > Controle de Acesso.'
      
        'Selecionar o usu'#225'rio que deseja definir as permiss'#245'es e na caixa' +
        ' abaixo, marcar quais telas o usu'#225'rio ter'#225' acesso'
      
        'ou n'#227'o. Lembre-se de clicar no bot'#227'o '#8220'Salvar'#8221' para confirmar as ' +
        'altera'#231#245'es.'
      ''
      ' - Cadastrar aluno'
      'Acessar: Cadastro > Aluno.'
      
        #9'Preencha os dados conforme solicitado e os salve. Ao cadastrar ' +
        'um aluno, o sistema insere automaticamente'
      
        'uma mensalidade aberta no m'#234's corrente para o aluno cadastrado. ' +
        'Mude o status do aluno para '#8220'inativo'#8221' para cancelar'
      'sua inscri'#231#227'o.'
      ''
      '- Baixar ou inserir novas mensalidades'
      #9'Acessar: Cadastro > Mensalidade.'
      
        #9'Para inserir uma nova mensalidade, preencha todos os dados conf' +
        'orme solicitado e os salve. Voc'#234' tamb'#233'm tem'
      
        'a op'#231#227'o de pesquisar pela mensalidade no m'#234's atual para o aluno ' +
        'em quest'#227'o. Altere o status dela para paga e altere'
      'a data para a data do pagamento para baix'#225'-la.'
      
        '* Isto ocorre visto que o sistema '#233' configurado de forma em que ' +
        'em todo come'#231'o de m'#234's, o sistema insere automaticamente'
      
        'a mensalidade para todos os alunos ativos no m'#234's corrente, deixa' +
        'ndo-a com status aberto e com a data do dia primeiro'
      
        '(Dia 01). Assim, basta pesquisar a mensalidade em quest'#227'o para o' +
        ' aluno em cada m'#234's e baix'#225'-la como abordado acima.'
      ''
      '- Relat'#243'rios'
      #9'Acessar: Relat'#243'rios > Hist'#243'rico de Aluno.'
      #9'Veja o hist'#243'rico de cada aluno no ano atual.'
      ''
      #9'Acessar: Relat'#243'rios > Monitor.'
      
        #9'Monitore todos os alunos no m'#234's corrente. Verifique quem est'#225' e' +
        'm dia, atrasados, ou ainda vai pagar.')
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
  end
end
