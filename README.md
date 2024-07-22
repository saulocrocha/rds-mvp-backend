### Tecnologias Utilizadas

- **[Java](https://www.java.com/pt-BR/)**
  - Linguagem de programação orientada a objetos.
  - **Versão:** 17

- **[Spring Boot](https://spring.io/projects/spring-boot)**
  - Framework para desenvolvimento de aplicações utilizando Java e Kotlin.
  - **Versão:** 3.1.3

- **[Spring Cloud](https://spring.io/projects/spring-cloud)**
  - Conjunto de ferramentas para criação de aplicações distribuídas e escaláveis.
  - **Versão:** 2023.0.2

- **[Lombok](https://projectlombok.org)**
  - Framework para reduzir a verbosidade do código Java.
  - **Versão:** 1.18.28

- **[Mapstruct](https://mapstruct.org)**
  - Biblioteca para mapeamento de objetos Java.
  - **Versão:** 1.5.5.Final

- **[OkHttp3](https://square.github.io/okhttp/)**
  - Cliente HTTP para Java.
  - **Versão:** 4.11.0

- **[PostgreSQL](https://www.postgresql.org)**
  - Banco de Dados relacional baseado em SQL.
  - **Versão:** 16.1

- **[Flyway](https://flywaydb.org)**
  - Ferramenta de versionamento do banco de dados.
  - **Versão:** 10.16.0

- **[Keycloak](https://www.keycloak.org)**
  - Solução de gerenciamento de identidade e acesso de código aberto que fornece recursos avançados de autenticação e autorização para aplicativos e serviços
  - **Versão:** 25.0.2

### Configuração do Ambiente

#### Pré-requisitos

- **Java** (v17)
- **Maven** (v3.9.5)
- **PostgreSQL** (v16.1)
- **Docker**
- **IntelliJ IDEA** ou **Visual Studio Code**

#### Instalação

1. Clone o repositório no local desejado:
   ```
   git clone https://github.com/saulocrocha/rds-mvp-backend.git
   ```

2. Abra a IDE com suporte a Java/Spring Boot de sua escolha e importe o projeto clonado.

#### Configuração da IDE

**IntelliJ IDEA:**

- Configurar o perfil:
  - Abra as configurações de Run/Debug.
  - Em "Modify Options", selecione "Add VM Options".
  - No campo "VM Options", insira `-Dspring.profiles.active=local` para utilizar o perfil local.

- Instalar o plugin do Docker:
  - Abra as configurações do IntelliJ, vá para "Plugins" e instale o plugin Docker.

**Visual Studio Code:**

- Instalar os plugins do Spring Boot e Docker.

- Configurar o perfil:
  - Instale a extensão "dotenv".
  - Crie um arquivo `.env` na raiz do projeto com o conteúdo `SPRING_PROFILES_ACTIVE=local`.

  - Instale o plugin do Docker:
    - Procure por "Docker" nas extensões e instale a extensão da Microsoft.

#### Configuração do PostgreSQL

- Com o PostgreSQL instalado e configurado na porta 5432:
  1. Abra o pgAdmin.
  2. Crie um servidor.
  3. Crie um banco de dados com o nome "somoshtdb".

### Inicialização

- Na IDE de sua escolha, abra o projeto e navegue até `src/main/java/br/com/somos/mvp_rds_backend`.
- Abra o arquivo `RdsMvpBackendApplication.java` e execute-o utilizando as ferramentas da IDE.

### Padronização de Merges

Para contribuições ao projeto, utilize os seguintes padrões de commits:

- **feat:** Nova funcionalidade ou componente.
- **chore:** Alterações não relacionadas a correção ou funcionalidade.
- **fix:** Correção de bug.
- **refactor:** Reestruturação do código sem alterar comportamento.
- **docs:** Atualizações na documentação.
- **style:** Alterações que não afetam o significado do código (formatação, etc.).
- **perf:** Melhorias de desempenho.
- **ci:** Alterações relacionadas à integração contínua.
- **build:** Mudanças no sistema de compilação ou dependências externas.
- **revert:** Reversão de um commit anterior.

---

Feito por [Igor Lima](https://github.com/igordt2016)

Este arquivo README.md foi formatado para fornecer instruções claras sobre o projeto e sua configuração inicial.
