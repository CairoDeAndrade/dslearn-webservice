# DSlearn Webservice

O sistema consiste em uma API REST para plataforma de ensino que mantém informações de cursos, suas turmas e alunos, bem como um fórum para perguntas e respostas sobre os conteúdos do curso. Os atores do sistema podem ser alunos e professores. Há também usuários administradores, que são os únicos autorizados a cadastrar cursos e turmas.

Um curso é composto de vários “recursos”, que são grupos de conteúdos. Estes recursos podem ser trilhas de aprendizado, bônus, links externos, e o próprio fórum de perguntas e respostas do curso. Cada recurso pode conter seções, e estas seções por sua vez é que vão conter as aulas, que podem ser conteúdos em vídeo e/ou texto, ou tarefas para serem entregues pelos alunos.

Uma tarefa pode ter um peso, uma data de entrega, um número de questões e a quantidade mínima de acertos necessários para ser aceita. Quando um aluno entrega a tarefa, esta fica aguardando pelo feedback do professor, e ela pode ser aceita ou rejeitada.

## Figma do projeto
Para um melhor entendimento da plataforma acesse o design disponibilizado pelo Bootcamp: https://www.figma.com/file/p8Hawp1w5g0pCZ3h3ZsCUd/DSLearn-Bootcamp

## Tecnologias e ferramentas utilizadas
- Spring Boot
- Spring Security (OAuth2, Token JWT e Refresh Token)
- JPA, Hibernate
- H2
- Postman

## Modelo conceitual
<img src="https://github.com/CairoDeAndrade/dslearn-webservice/blob/main/backend/assets/img/modelo-conceitual-com-forum.png" width="700" margin="10rem" title="conceptual model">



