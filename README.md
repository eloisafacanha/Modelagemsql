## Documentação Simplificada do Modelo Relacional

*Projeto:* Abandono Zero

*Data:* 2024-05-12

*Autor:* Ana Eloisa da Silva Façanha

*Objetivo:* Descrever o modelo relacional do projeto de forma resumida e simplificada.

## Entidades

- *Usuários* Formulário (1:N): Um usuário pode ter preenchido vários formulários, mas cada formulário está associado a um único usuário. Essa relação é estabelecida através do campo id_usuario na 'tabela.

 ### Entidade: Geral

- **Descrição:** Detalhes gerais do usuário, como renda, moradia, etc.
- **Atributos:**
  - **id:** Identificador único do formulário.
  - **id_usuário:** Chave estrangeira que referencia o usuário associado a este formulário.
  - **dataCriação:** Data de criação do formulário.

### Entidade: Possuir Cão

- **Descrição:** Informações sobre o cão que o usuário possui, incluindo raça, idade, etc.
- **Atributos:**
  - **id:** Identificador único do registro.
  - **id_formulário:** Chave estrangeira que referencia o formulário associado a este registro.
  - **nome:** Nome do cão.
  - **raça:** Raça do cão.
  - **idade:** Idade do cão.
  - **gênero:** Gênero do cão (macho/fêmea).
  - **castrado:** Indica se o cão é castrado ou não.
  - **cor:** Cor do cão.

### Entidade: Já Teve Cão

- **Descrição:** Informações sobre o cão que o usuário já teve, como nome, personalidade, etc.
- **Atributos:**
  - **id:** Identificador único do registro.
  - **id_formulário:** Chave estrangeira que referencia o formulário associado a este registro.
  - **nome:** Nome do cão.
  - **personalidade:** Descrição da personalidade do cão.
  - **raça:** Raça do cão.

### Entidade: Deseja Cão

- **Descrição:** Informações sobre o tipo de cão que o usuário deseja ter, incluindo tamanho, pelagem, etc.
- **Atributos:**
  - **id:** Identificador único do formulário.
  - **id_usuário:** Chave estrangeira que referencia o usuário associado a este formulário.
  - **tamanho:** Tamanho do cão desejado.
  - **pelagem:** Tipo de pelagem desejado.
  - **cor:** Cor preferida do cão.
  - **observações:** Observações adicionais sobre as preferências do usuário.

### Entidade: Sem Cão

- **Descrição:** Motivo pelo qual o usuário não tem e não deseja ter um cão.
- **Atributos:**
  - **id:** Identificador único do formulário.
  - **id_usuário:** Chave estrangeira que referencia o usuário associado a este formulário.
  - **motivo:** Descrição do motivo pelo qual o usuário não tem e não deseja ter um cão.

### Entidade: Contato

- **Descrição:** Dados para contato futuro com o usuário, como nome completo, celular, email.
- **Atributos:**
  - **id:** Identificador único do formulário.
  - **id_usuário:** Chave estrangeira que referencia o usuário associado a este formulário.
  - **nome:** Nome completo do usuário.
  - **celular:** Número de celular do usuário.
  - **email:** Endereço de email do usuário.

### Entidade: Cão

- **Descrição:** Informações sobre um cão, como nome, gênero, raça, etc.
- **Atributos:**
  - **id:** Identificador único do cão.
  - **nome:** Nome do cão.
  - **gênero:** Gênero do cão (macho/fêmea).
  - **raça:** Raça do cão.
  - **idade:** Idade do cão.
  - **cor:** Cor do cão.
  - **castrado:** Indica se o cão é castrado ou não.


## Relacionamentos

- Um usuário pode ter um único formulário geral (1:1).
- Um usuário pode ter vários formulários de cães (N:M).
- Um formulário de "possuir cão" pode ter um único registro de "cão (possuir)".
- Um formulário de "desejar cão" pode ter um único registro de "cão (desejar)".

## Regras de Negócio

- Todos os campos obrigatórios devem ser preenchidos.
- As informações devem ser consistentes entre os formulários.
- Os usuários não podem editar informações já salvas, exceto em casos específicos.
- As informações dos usuários são confidenciais.

## Diagrama

[Diagrama simplificado do modelo relacional (opcional)]

## Considerações Finais

Este modelo relacional simplificado fornece uma base para o gerenciamento eficiente das informações dos usuários e suas respostas nos formulários do projeto Abandono Zero. As entidades, seus atributos e relacionamentos garantem a organização e a integridade dos dados. As regras de negócio garantem a consistência e a confiabilidade das informações.

*Observações:*

- Este modelo é uma versão simplificada e pode ser adaptado às necessidades específicas do projeto.
- É importante documentar detalhadamente o modelo relacional para facilitar o entendimento e a manutenção do sistema.
- A implementação do modelo relacional deve seguir boas práticas de desenvolvimento de banco de dados.




