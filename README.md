<h1 align="center">
    Robot Xpert - Desafio do Ninja
</h1>

### Sobre o Desafio

Desafio do Ninja é um desafio proposto pela QA Ninja Academy, onde devemos criar e automatizar casos de teste, 
de maneira eficiente e organizada.

<h1 align="center">
Estrutura do projeto
</h1>

O projeto foi desenvolvido com `Robot Framework`, utilizando o framework `Playwright` integrado através da library `Browser`,
criando testes de aceitação que simulam o comportamento do usuário final.

#### Organização do Projeto
```ruby
    ├── .github                   
        ├── gitflows        # Arquivos do Github Actions para executar o CI.
    ├── deploys             # Diretório para armazenar os arquivos da aplicação. 
    ├── resource
        ├── actions         # Diretório com as classes .robot que executa as keywords. 
        ├── fixtures        # Diretório para armazenar massa de dados em json.
        ├── libs            # Library com classes .py que executa as keywords de chamada no banco. 
        ├── base            # Arquivos de definições do robot.
    ├── test_env            # Diretório para armazernar os recursos da library
    ├── test                # Diretório para armazernar os cenários de testes   
        ├── enrollments     # Suite de teste para os cenários de matrículas
        ├── login           # Suite de teste para os cenários de login do administrador 
        ├── plans           # Suite de teste para os cenários de planos      
        ├── students        # Suite de teste para os cenários de alunos
    ├── Makefile            # Arquivos de definições para executar os testes.
    └── README.md           # Documentação do projeto
```
    
 ### Arquitetura do projeto   
![bodytest](https://user-images.githubusercontent.com/64233343/172066490-fb36c60d-4e78-4c6d-bed4-50cd7c78b276.jpeg)

### Por quê utilizar o Robot Framework?
Para otimizar o tempo, criar testes robustos e de aceitação que simulam o comportamento do usuário final.<br/> 
O uso do `Robot Framework` para automatizar testes de software torna o processo mais eficiente e mais produtivo sem sacrificar a eficácia. <br/> 
Desta forma, conseguimos trabalhar, ao mesmo tempo, com foco no problema e na solução, construindo rapidamente código de excelente qualidade que resolve os problemas e é executado de forma estável.<br/> 
 
### Continuos Test
Com `Github Actions` criamos uma `PIPE`, que executa nosso projeto de automação a cada `PUSH`.<br/> 
Podendo ser executado também manualmente no menu de Actions!<br/> 
O `CI` esta integrado com a `AWS` enviando os logs de resultado dos testes para armazenar em um `Bucket S3`.<br/> 

<h1 align="center">
Configurando o projeto 
</h1>

### Dependências para executar localmente

- Ter uma IDE de sua preferência
- Instalar Python3: [Download](https://www.python.org/downloads/)
- Robot Framework
> Instalar Robot Framework
``` ruby
pip install robotframework
```
- Instalar a [Library Browser](https://github.com/MarketSquare/robotframework-browser)

<h1 align="center">
Executando o projeto
</h1>

> Clone o projeto
``` ruby
git clone https://github.com/GustavoMachado22/Bodytest-robotframework.git
```

## Instruções de execução 
Use os comandos listados abaixo no terminal, diretamente na pasta raiz:

> Executar em modo headless 
``` ruby
make headless tests
```

> Executar com navegador aberto
``` ruby
make local e2e
```

> Executar um teste editável
```
Editar os campos no arquivo Makefile como desejado.
# Available: local and headless
TYPE=local
# Available: chromium, firefox and webkit
BROWSER=chromium
# Nome do cenário teste
TEST_NAME=Login Administrador
```
``` ruby
make test
```

> Executar cenários de matrículas [enrolls]
``` ruby
make enrolls
```

> Executar cenários de login do administrador [login]
``` ruby
make login
```

> Executar cenários de planos [plans]
``` ruby
make plans
```

> Executar cenários de alunos [students]
``` ruby
make students
```


<h1 align="center">
Executando Github Actions
</h1>

![Github-Actions](https://user-images.githubusercontent.com/64233343/172062250-5cb1aae7-c233-4658-b150-f5050ada00e8.gif)

<h1 align="center">
Enviando logs para o Bucket S3
</h1>

![Bucket-S3](https://user-images.githubusercontent.com/64233343/172062815-118330dc-2013-42fe-a31b-497f2f291fc3.gif)

<h1 align="center"> 
 A little about me...  <img src="https://media.giphy.com/media/eJjBP5o1N8tR7Hem2g/giphy.gif" width="60"> 
    </h1>
     <br />
     
                          A passionate developer, currently working as Software QA Engineer at Zé Delivery.

<img align="leaft" alt="Gif" height="300" width="1090" style="border-radius:50px;"  src="https://camo.githubusercontent.com/5dc6ee33381917e41fc9c4951799268998f11a9b864399bf79a0842e4f9b194d/68747470733a2f2f692e696d6775722e636f6d2f315a76566b44632e676966">

<div align="center">
<img height="150em" src="https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=GustavoMachado22&theme=radical"/> 
<img height="150em" src="https://github-readme-stats.vercel.app/api?username=GustavoMachado22&show_icons=true&theme=radical&include_all_commits=true&count_private=false&hide_border=true"/> <img height="150em" src="https://github-readme-stats.vercel.app/api/top-langs/?username=GustavoMachado22&layout=compact&langs_count=7&theme=radical&hide_border=true"/> <img height="150em" src="https://github-readme-streak-stats.herokuapp.com/?user=GustavoMachado22&theme=radical&hide_border=true"/>
	 	  	  
###  ⚙️ Some Tool and Tech I use:     
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white) 
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white) 
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) 	     
![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=Selenium&logoColor=white) 
![travis](https://img.shields.io/badge/travis_CI-3EAAAF?style=for-the-badge&logo=travisci&logoColor=white)
![Heroku](https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white)
![Robot](https://img.shields.io/badge/Robot%20Framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
![GitHunActions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white) 
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white) 
![GraphQl](https://img.shields.io/badge/GraphQl-E10098?style=for-the-badge&logo=graphql&logoColor=white)
![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Jenkins](https://img.shields.io/badge/jenkins-%232C5263.svg?style=for-the-badge&logo=jenkins&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![AmazonDynamoDB](https://img.shields.io/badge/Amazon%20DynamoDB-4053D6?style=for-the-badge&logo=Amazon%20DynamoDB&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) 
![Confluence](https://img.shields.io/badge/confluence-%23172BF4.svg?style=for-the-badge&logo=confluence&logoColor=white) 
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) 
![GitHunActions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white) 
![Notion](https://img.shields.io/badge/Notion-%23000000.svg?style=for-the-badge&logo=notion&logoColor=white) 
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white) 
![WP](https://img.shields.io/badge/Wordpress-21759B?style=for-the-badge&logo=wordpress&logoColor=white)
![Jira](https://img.shields.io/badge/jira-%230A0FFF.svg?style=for-the-badge&logo=jira&logoColor=white) 
![Trello](https://img.shields.io/badge/Trello-%23026AA7.svg?style=for-the-badge&logo=Trello&logoColor=white) 
![AndroiStudio](https://img.shields.io/badge/Android_Studio-3DDC84?style=for-the-badge&logo=android-studio&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-007ACC?style=for-the-badge&logo=Xcode&logoColor=white) 
![VisualStudioCode](https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white) 
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)
![Mac OS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white) 
	
<img src="https://media.giphy.com/media/0TtX2qqpxp3pIafzio/giphy.gif" width="80"> 
	  
 </div>
  

  <div align="leaft">

  
 ## 📫 How to reach me?


[![LinkedIn](https://img.shields.io/badge/LinkedIn-%230077B5.svg?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/gustavohmachado/)
[![Instagram](https://img.shields.io/badge/Instagram-%23E4405F.svg?logo=Instagram&logoColor=white)](https://www.instagram.com/gustavoaxe/)
	
<details>
  <br />
   <summary><b>🖥️ Meu DevSetup</b></summary>
  	<ul>
  	  <li><b>OS:</b> macOS Monterey 12.1</li>
	  <li><b>Laptop: </b> MacBook Pro (15-inch, 2019)</li>
  	  <li><b>CPU: </b> 2,3 GHz Intel Core i9 8-Core</li>
	    <li><b>GPU: </b> Intel UHD Graphics 630 1536 MB</li>
	    <li><b>RAM:</b> 16 GB 2400 MHz DDR4</li>
      <li><b>To Stay Updated:</b> Linkedin, Youtube and Medium.</li>
	</ul>	
</details>


![Snake animation](https://github.com/GustavoMachado22/GustavoMachado22/blob/output/github-contribution-grid-snake.svg)
   
