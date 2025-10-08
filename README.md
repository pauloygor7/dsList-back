# 🎮 DSList — API de Listas de Jogos
![Java](https://img.shields.io/badge/Java-17-red?style=for-the-badge&logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen?style=for-the-badge&logo=springboot)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?style=for-the-badge&logo=postgresql)
![Docker](https://img.shields.io/badge/Docker-Compose-blue?style=for-the-badge&logo=docker)
![License](https://img.shields.io/github/license/devsuperior/java-spring-dslist?style=for-the-badge)

---

## 🧠 Sobre o projeto

**DSList** é uma aplicação **backend Java Spring Boot** desenvolvida durante o **Intensivão Java Spring** da [DevSuperior](https://devsuperior.com "Site da DevSuperior").

O sistema fornece uma **API REST** para gerenciar **listas de jogos**, permitindo:
- 📋 Listar jogos e suas listas
- 🔄 Reordenar posições dos jogos
- 🔍 Consultar detalhes específicos de cada jogo

O projeto segue boas práticas de arquitetura, domínio e persistência de dados, utilizando **Spring Boot**, **JPA/Hibernate**, **PostgreSQL** e **Docker** para deploy.

---

## 🧩 Modelo de Domínio

![Modelo de domínio DSList](https://raw.githubusercontent.com/devsuperior/java-spring-dslist/main/resources/dslist-model.png)

---

## ⚙️ Tecnologias Utilizadas

### 🖥️ Back end
- **Java 17**
- **Spring Boot**
- **Spring Data JPA / Hibernate**
- **Maven**
- **Banco de Dados:** PostgreSQL / H2 (testes)
- **Docker & Docker Compose**

---

## 🧭 Perfis de execução

| 🧱 Perfil | 🔎 Descrição | 💾 Banco de Dados |
|-----------|--------------|------------------|
| `test` | Utiliza banco H2 em memória para testes | H2 |
| `dev` | Execução local com PostgreSQL | PostgreSQL |
| `prod` | Ambiente de produção (Docker / Cloud) | PostgreSQL |

---

## 🗂️ Estrutura de Arquivos Importantes

**application.properties**
```properties
spring.profiles.active=${APP_PROFILE:test}
spring.jpa.open-in-view=false
cors.origins=${CORS_ORIGINS:http://localhost:5173,http://localhost:3000}
```

**application-test.properties**
```properties
spring.datasource.url=jdbc:h2:mem:testdb
spring.h2.console.enabled=true
spring.jpa.show-sql=true
```

**application-dev.properties**
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/dscatalog
spring.datasource.username=postgres
spring.datasource.password=1234567
spring.jpa.hibernate.ddl-auto=none
```

**application-prod.properties**
```properties
spring.datasource.url=${DB_URL}
spring.datasource.username=${DB_USERNAME}
spring.datasource.password=${DB_PASSWORD}
spring.jpa.hibernate.ddl-auto=none
```

---

## 🧠 Principais Classes

| Classe | Função |
|--------|--------|
| `GameRepository` | Consultas personalizadas SQL para projeções de jogos |
| `GameListRepository` | Atualiza posições dos jogos dentro de listas |
| `WebConfig` | Configuração global de CORS |
| `import.sql` | Dados iniciais do banco de dados |
| `system.properties` | Define a versão do Java (17) |

---

## 🐳 Execução com Docker Compose

Um script pronto para subir o ambiente com Docker está disponível no Gist oficial:
👉 [Ver script no GitHub Gist](https://gist.github.com/acenelio/5e40b27cfc40151e36beec1e27c4ff71)

---

## 🧰 Como executar localmente

### 📋 Pré-requisitos
- Java 17+
- Maven
- PostgreSQL (para ambiente dev)

### ▶️ Passos para rodar

```bash
# Clonar repositório
git clone https://github.com/seu-usuario/dslist-backend

# Entrar na pasta do projeto
cd dslist-backend

# Executar o projeto
./mvnw spring-boot:run
```

---

## 🧱 Estrutura das Entidades

- 🎮 **Game** → Representa um jogo (título, gênero, score, ano, descrições, imagem)
- 🗂️ **GameList** → Lista de jogos agrupados por tema
- 🔗 **Belonging** → Associação entre `Game` e `GameList`, contendo a posição do jogo

---

## 🌐 Endpoints Principais

| Método | Endpoint | Descrição |
|--------|-----------|-----------|
| `GET` | `/games` | Lista todos os jogos |
| `GET` | `/games/{id}` | Retorna detalhes de um jogo |
| `GET` | `/lists` | Retorna todas as listas de jogos |
| `GET` | `/lists/{id}/games` | Retorna jogos de uma lista específica |
| `POST` | `/lists/{id}/replacement` | Reordena jogos dentro de uma lista |

---

## 🧑‍💻 Autor

**Paulo Ygor Feitoza Martins**
Projeto desenvolvido com base no treinamento da [DevSuperior](https://devsuperior.com).

📎 *Inspirado pelo repositório oficial da DevSuperior (DSList).*

---

## 🏆 Licença

Este projeto está sob a licença MIT — veja o arquivo [LICENSE](https://github.com/devsuperior/java-spring-dslist/blob/main/LICENSE) para mais detalhes.
