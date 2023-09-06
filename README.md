# |||||||||||||||||||||||||||||||||||||||||||
# || Autor: Luiz Felipe Diogo Fialho Silva ||
# |||||||||||||||||||||||||||||||||||||||||||

# Buildando a imagem
- No arquivo "dockerfile", na parte "FROM", conferir se a versão da imagem drupal (valor após os ":") é a versão desejada;
- Ainda no arquivo "dockerfile", Atualizar versão e descrição da imagem em caso de alteração;
- abrir o terminal e executar o build.bat;

# Configurando o Ambiente
- Colocar a pasta da aplicação que deseja subir dentro da pasta "ambiente";
- colocar no settings php da aplicação o seguinte trecho de código:
     ```
      $databases['default']['default'] = array (
      'database' => getenv('DB_NAME'),
      'username' => getenv('DB_USERNAME'),
      'password' => getenv('DB_PASSWORD'),
      'prefix' => '',
      'host' => getenv('DB_HOST'),
      'port' => getenv('DB_PORT'),
      'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
      'driver' => 'mysql',

      );
      $settings['config_sync_directory'] = 'sites/default/files/config_HLa7GFJHL6kMrrY_2gP1URWsiA82Y75As1JOHCsfOXn5ROAFh1CLeyTl6bscow98Ybfuv4_wIw/sync';
    ```

# Ajustando Variáveis de Ambiente
- Na parte app config, conferir se o nome da imagem está idêntico ao nome da imagem criada!;
- Na parte host config, em "HOST_APPDIR", colocar o caminho para acessar a pasta da aplicação que deseja subir;
- HOST_PORT=8100 e HOST_ADM_PORT=8101 são as portas que serão acessados a aplicação e o adminer, respectivamente;


# Iniciando e Encerrando a execução
- para iniciar a execução do container, digite ".\start.bat" no terminal;
- para encerrar a execução do container, digite ".\stop.bat" no terminal;


# Dump do Banco
- Acesse o adminer (Caso não tenha alterado no ".env", http://localhost:8101/);
- Realize a conexão com o banco (Credenciais disponíveis no ".env", na parte "DB_Config");
- Importe para a base de dados o arquivo SQL;


# Acessando a aplicação
- Com o container em execução, Acesse a aplicação em: http://localhost:8100/ (caso não tenha alterado no ".env");
