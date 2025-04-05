# 💰 Financeiro Pessoal

**Financeiro Pessoal** é uma aplicação web desenvolvida em Ruby on Rails que permite que usuários cadastrem, acompanhem e visualizem seus gastos e receitas mensais. O objetivo é ajudar no controle financeiro pessoal de forma simples e eficiente.

---

## 🚀 Tecnologias utilizadas

- [Ruby on Rails 7](https://rubyonrails.org/)
- [Turbo (Hotwire)](https://turbo.hotwired.dev/)
- [Stimulus.js](https://stimulus.hotwired.dev/) (em breve)
- [Bootstrap 5](https://getbootstrap.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [ESBuild](https://esbuild.github.io/)

---

## ⚖️ Configuração do ambiente

### Pré-requisitos

- Ruby (3.x recomendado)
- Rails 7
- PostgreSQL
- Node.js e npm
- Yarn (opcional)
- Docker (opcional)

### Instalação

1. Clone o projeto:

```bash
git clone git@github.com:avilavsc/financeiro-pessoal.git
cd financeiro-pessoal
```

2. Instale as gems:

```bash
bundle install
```

3. Instale os pacotes JS:

```bash
npm install
```

4. Crie e configure o banco de dados:

```bash
rails db:create db:migrate
```

5. Rode o ambiente de desenvolvimento:

```bash
bin/dev
```

---

## 🔐 Autenticação

A autenticação de usuários é feita com [Devise](https://github.com/heartcombo/devise). Após o cadastro, o usuário terá acesso ao painel de controle com suas finanças.

---

## 📁 Funcionalidades

- Cadastro e login de usuários
- Painel com receitas e despesas
- Integração com Turbo para navegação rápida
- Interface moderna com Bootstrap
- Organização de gastos mensais (em desenvolvimento)

---

## 📌 Próximos passos

- Adicionar filtros por categoria/data
- Relatórios gráficos com Chartkick ou ApexCharts
- Responsividade mobile com Bootstrap
- Exportação de dados (PDF/Excel)

---

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

