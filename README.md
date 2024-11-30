# Extração e Análise de Dados dos Filmes de Star Wars

Este projeto realiza a extração e análise de dados da API de Star Wars (SWAPI) e, potencialmente, de outras fontes como o OMDb, para fornecer insights sobre os filmes de Star Wars e entidades relacionadas (personagens, planetas, espécies, naves espaciais, veículos).

## Estrutura do Projeto

O projeto está organizado da seguinte forma:

```
app/
├── api/
│   ├── omdb_api.py
│   └── sw_api.py
├── config/
│   └── logger_config.py
├── data_processing/
│   ├── film_transformer.py
│   ├── omdb_transform.py
│   ├── people_transform.py
│   ├── planet_transform.py
│   ├── species_transform.py
│   ├── starship_transform.py
│   ├── transformer.py
│   └── vehicle_transform.py
├── db/
│   ├── db.py
│   └── models/
│       ├── films_model.py
│       ├── film_people_model.py
│       ├── ... (outros arquivos de modelos)
├── repositories/
│   ├── films_planets_repository.py
│   ├── films_repository.py
│   ├── ... (outros arquivos de repositórios)
└── main.py
```

## Módulos e Funcionalidades

Abaixo está um resumo dos principais módulos e suas funcionalidades:

### **`api`**  
Este módulo gerencia as interações com APIs externas.
- **`sw_api.py`**: Interage com a API de Star Wars (SWAPI) para recuperar dados sobre filmes, personagens, planetas, espécies, naves espaciais e veículos.
- **`omdb_api.py`**: Interage com a API OMDb (Open Movie Database) para recuperar dados adicionais sobre filmes (ex.: avaliações, prêmios).

### **`config`**  
Contém arquivos de configuração da aplicação.
- **`logger_config.py`**: Configura o sistema de logs para o projeto.

### **`data_processing`**  
Este módulo é responsável por transformar e limpar os dados brutos recuperados das APIs.
- **`transformer.py`**: Define uma classe base de transformação ou funções utilitárias.
- **`film_transformer.py`, `people_transform.py`**, etc.: Contêm lógica de transformação específica para cada tipo de dado (filmes, personagens, planetas, espécies, naves espaciais, veículos). Realizam limpeza, formatação e reestruturação dos dados.

### **`db`**  
Gerencia as interações com o banco de dados.
- **`db.py`**: Gerencia conexões e sessões do banco de dados.
- **`models`**: Define os modelos do banco de dados (tabelas) usando um ORM como SQLAlchemy. Cada arquivo nesta pasta representa uma tabela no banco de dados (ex.: `films`, `people`, `planets`) ou tabelas de relacionamento (`film_people`, `film_planets`).

### **`repositories`**  
Este módulo fornece uma camada de abstração para acessar e manipular dados no banco de dados.  
- Cada arquivo provavelmente corresponde a uma tabela específica ou conjunto de tabelas relacionadas no banco de dados, fornecendo métodos para operações comuns (CRUD - Criar, Ler, Atualizar, Excluir).  
- Exemplo: **`films_repository.py`** lida com operações específicas relacionadas à tabela de filmes.

### **`main.py`**  
Ponto de entrada principal da aplicação. Orquestra o processo de extração, transformação e carregamento de dados (ETL).  
- Provavelmente utiliza os módulos de API para buscar dados, os módulos de processamento para transformar os dados e os módulos de banco de dados/repositórios para armazená-los.

## Análise de Dados e Insights

Este repositório contém três notebooks Jupyter que exploram e analisam os dados dos filmes da franquia Star Wars. Cada notebook é focado em um aspecto específico, utilizando dados extraídos da **Star Wars API (SWAPI)**, enriquecidos com informações adicionais de outras fontes, como a API do OMDb. Abaixo, você encontrará uma descrição detalhada de cada notebook e os insights gerados.

### 1. **Desempenho Monetário dos Filmes**
**Arquivo**: `monetary_performance_analysis.ipynb`

#### **Descrição**:
Este notebook analisa o desempenho financeiro dos filmes da franquia Star Wars. Os dados utilizados incluem bilheteria, prêmios e número de votos no IMDb, permitindo identificar padrões relacionados ao sucesso comercial.

#### **Principais Métricas e Insights**:
- Filme com maior arrecadação (`BoxOffice`).
- Relação entre bilheteria e avaliação no IMDb (`imdbRating`) ou na crítica (`Metascore`, `tomatoesRating`).
- Médias de bilheteria por diretor e produtor.
- Impacto de prêmios (`Awards`) no desempenho financeiro.

---

### 2. **Críticas e Avaliações**
**Arquivo**: `reviews_and_ratings_analysis.ipynb`

#### **Descrição**:
Este notebook examina as avaliações dos filmes em plataformas como IMDb, Rotten Tomatoes e Metacritic, explorando discrepâncias e tendências entre as diferentes fontes de crítica.

#### **Principais Métricas e Insights**:
- Comparação entre avaliações do IMDb e Rotten Tomatoes.
- Gêneros (`Genre`) mais bem avaliados na franquia.
- Filmes com maior discrepância entre avaliações das plataformas.
- Evolução das críticas ao longo do tempo.

---

### 3. **Análise do Enredo e Narrativa**
**Arquivo**: `plot_analysis.ipynb`

#### **Descrição**:
Neste notebook, analisamos os dados relacionados aos enredos dos filmes, bem como aspectos da narrativa (como escritores, diretores e classificação indicativa). O objetivo é entender como esses fatores impactam a recepção crítica e do público.

#### **Principais Métricas e Insights**:
- Filmes com enredos mais curtos ou longos (`Plot`) e sua relação com as avaliações.
- Relação entre duração (`Runtime`) e recepção crítica.
- Impacto da classificação indicativa (`Rated`) no sucesso dos filmes.
- Comparação entre os escritores dos filmes e suas avaliações.

---

## **Como Utilizar os Notebooks**

1. **Instalar Dependências**:
   Certifique-se de que as bibliotecas necessárias estão instaladas:
   ```bash
   pip install -r requirements.txt
   ```

2. **Executar o Notebook**:
   - Navegue até o diretório do projeto:
     ```bash
     cd starwars-analysis
     ```
   - Inicie o Jupyter Notebook:
     ```bash
     jupyter notebook
     ```
   - Abra o notebook desejado (`monetary_performance_analysis.ipynb`, `reviews_and_ratings_analysis.ipynb` ou `plot_analysis.ipynb`).

3. **Configurar a Conexão com o Banco de Dados**:
   - Certifique-se de que o banco de dados MySQL está configurado e que os dados estão disponíveis.
   - Atualize a célula de configuração no início de cada notebook com as credenciais do banco de dados:
     ```python
     DATABASE_CONFIG = {
         'host': 'localhost',
         'user': 'root',
         'password': 'sua_senha',
         'database': 'starwars'
     }
     ```

---

### **Dependências**

- **Bibliotecas Python**:
  - `pandas`
  - `sqlalchemy`
  - `pymysql`
  - `matplotlib` (para gráficos)
  - `seaborn` (para visualizações avançadas)

- **Ferramentas**:
  - Jupyter Notebook
  - MySQL 8.0

---

### **Insights e Resultados**

Os notebooks oferecem uma análise abrangente e visual dos dados da franquia Star Wars, permitindo identificar padrões e responder a perguntas como:
- Quais fatores influenciam o sucesso financeiro e crítico dos filmes?
- Como os aspectos narrativos e visuais impactam as avaliações?
- Quais tendências podem ser observadas entre os diferentes episódios?

---

## Executando a Aplicação

### **Passo a Passo: Subindo o Banco de Dados com o Arquivo SQL Dump**

Com este passo a passo, você poderá restaurar o banco de dados completo utilizando o arquivo dump fornecido (`starwars_dump.sql`). É necessário ter o MySQL 8.0 instalado.

---

#### **1. Pré-requisitos**
1. **Instale o MySQL 8.0**:
   - Caso não esteja instalado, siga as instruções de instalação para sua plataforma:
     - **Windows**: [MySQL Installer](https://dev.mysql.com/downloads/installer/)
     - **Linux**:
       ```bash
       sudo apt update
       sudo apt install mysql-server
       ```
     - **macOS**:
       ```bash
       brew install mysql
       ```

2. **Confirme a instalação**:
   Verifique se o MySQL está funcionando:
   ```bash
   mysql --version
   ```
   A versão exibida deve ser semelhante a:
   ```
   mysql  Ver 8.0.x for [OS] on [architecture]
   ```

---

#### **2. Restaurando o Banco de Dados**

1. **Inicie o MySQL**:
   - Certifique-se de que o serviço MySQL está em execução:
     - **Linux/macOS**:
       ```bash
       sudo systemctl start mysql
       ```
     - **Windows**:
       O serviço deve ser iniciado automaticamente com o sistema. Caso contrário, inicie-o pelo *Services Manager*.

2. **Importe o Dump**:
   Use o comando abaixo para restaurar o banco de dados a partir do arquivo SQL:
   ```bash
   mysql -u root -p < starwars_db.sql
   ```
   - **Explicação**:
     - `-u root`: Nome do usuário MySQL (substitua se estiver usando outro).
     - `-p`: Solicita a senha do usuário.
     - `starwars_db.sql`: O arquivo contendo o dump do banco de dados.

3. **Confirme a Importação**:
   Após o comando, o banco de dados será restaurado. Para confirmar:
   - Acesse o cliente MySQL:
     ```bash
     mysql -u root -p
     ```
   - Liste os bancos de dados:
     ```sql
     SHOW DATABASES;
     ```
   - Use o banco restaurado:
     ```sql
     USE starwars;
     ```
   - Liste as tabelas:
     ```sql
     SHOW TABLES;
     ```

---

#### **3. Possíveis Problemas**
1. **Erro "Database already exists"**:
   - O banco de dados já está presente no MySQL local. Para corrigir:
     - Exclua o banco atual:
       ```sql
       DROP DATABASE starwars;
       ```
     - Refaça o processo de importação.

2. **Erro de permissão**:
   - Certifique-se de que você tem permissões administrativas no MySQL. 

3. **Arquivo SQL não encontrado**:
   - Certifique-se de que o arquivo `starwars_dump.sql` está no mesmo diretório do comando ou informe o caminho completo:
     ```bash
     mysql -u root -p < /caminho/para/starwars_dump.sql
     ```

---

#### **4. Próximos Passos**
Depois que o banco de dados for restaurado:
- Instalação de dependências: `pip install -r requirements.txt`
- Crie um arquivo .env com as variáveis de ambiente necessárias para o banco de dados.
  - DB_USER=root
  - DB_PASSWORD=123456
  - DB_HOST=localhost
  - DB_PORT=3306
  - DB_NAME=star_wars

- Como executar o script `python -m app.main.py`