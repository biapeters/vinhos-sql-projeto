# 🍷 Projeto: Banco de Dados de Regiões, Vinícolas e Vinhos

## 📝 Descrição do Projeto

Este projeto é um sistema de banco de dados relacional voltado para o gerenciamento de vinícolas, suas regiões de origem e os vinhos produzidos. Desenvolvido inteiramente em SQL, ele simula um ambiente real de dados utilizados em uma aplicação de gestão de vinhos.

O objetivo principal é demonstrar habilidades na modelagem de dados, normalização, relacionamentos entre tabelas, manipulação de dados e controle de permissões em banco de dados.

---

## ✨ Funcionalidades

O banco de dados oferece as seguintes funcionalidades:

- **Criação de tabelas**: `Regiao`, `Vinicolas`, `Vinhos`
- **Inserção de dados realistas**: Informações sobre vinícolas brasileiras e suas regiões
- **Relacionamentos entre tabelas** com chaves estrangeiras (FK)
- **Consulta com múltiplos JOINs** para exibir vinhos junto com suas vinícolas e regiões
- **Criação de VIEW** para facilitar consultas específicas (`vinicolas_view`)
- **Criação de usuário** com permissões restritas de acesso (`Somellier` com `GRANT SELECT`)
- **Limitação de uso por hora** (`MAX_QUERIES_PER_HOUR`)

---

## 🧠 Aprendizados e Desafios
Este projeto foi uma excelente oportunidade para:

- Reforçar o design de esquemas de banco de dados relacionais
- Praticar a criação de tabelas, definição de chaves primárias e estrangeiras
- Trabalhar com a inserção e consulta de dados
- Entender e aplicar conceitos de gerenciamento de usuários e permissões em SQL
- Criar e utilizar VIEWs para simplificar consultas e controlar o acesso a dados

O principal desafio foi garantir a correta definição das chaves estrangeiras e a consistência dos dados entre as tabelas.

## 🤝 Contribuições
Contribuições são bem-vindas! Se você tiver sugestões de melhoria para o esquema, dados ou consultas, sinta-se à vontade para abrir uma issue ou enviar um pull request.

---

Made with ❤️ by Bianca Peters
