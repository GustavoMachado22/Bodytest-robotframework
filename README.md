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
A little about me...  <img src="https://media.giphy.com/media/VgCDAzcKvsR6OM0uWg/giphy.gif" width="60">   
</h1>


```
A passionate developer, currently working as Software QA Engineer at Zé Delivery
``` 

     

<br/> 

<img align="leaft" alt="Gif" height="300" width="1090" style="border-radius:50px;"  src="https://camo.githubusercontent.com/5dc6ee33381917e41fc9c4951799268998f11a9b864399bf79a0842e4f9b194d/68747470733a2f2f692e696d6775722e636f6d2f315a76566b44632e676966">

<div align="center">
  <a href="https://www.linkedin.com/in/gustavohmachado/">
  <img height="180em" src="https://github-readme-stats.vercel.app/api?username=GustavoMachado22&show_icons=true&theme=dracula&include_all_commits=true&count_private=false"/> 
  <img height="180em" src="https://github-readme-stats.vercel.app/api/top-langs/?username=GustavoMachado22&layout=compact&langs_count=7&theme=dracula"/>

      
 

 </div>
  
###  ⚙️ Some Tool and Tech I use:   
<img align="center" alt="Python" height="80" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg"/>
  
<img align="center" alt="Ruby" height="80" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-plain-wordmark.svg"/>
  
<img align="center" alt="graphql" height="90" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/graphql/graphql-plain-wordmark.svg"/>
  
<img align="center" alt="Robot" height="40" width="60" src="https://arctouch.com/wp-content/uploads/2021/02/robot-framework-test-automation-blog-1024x576.png"/>
  
<img align="center" alt="Git" height="80" width="40"  src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-plain.svg"/>    

<img align="center" alt="Appium" height="50" width="80" src="https://www.testgrid.io/blog/wp-content/uploads/2021/05/appium.png"/>
  
<img align="center" alt="Rspec" height="40" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rspec/rspec-original.svg"/>
         
<img align="center" alt="Selenium" height="80" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/selenium/selenium-original.svg"/>
  
<img align="center" alt="GitHub" height="40" width="40" src="https://cdn.icon-icons.com/icons2/2429/PNG/512/github_logo_icon_147285.png"/>
  
<img align="center" alt="Amazon" height="80" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-plain-wordmark.svg"/>
          
<img align="center" alt="Heroku" height="80" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/heroku/heroku-original-wordmark.svg"/>
  
<img align="center" alt="Travis" height="60" width="90" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/travis/travis-plain-wordmark.svg"/>
          
<img align="center" alt="Vscode" height="40" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/visualstudio/visualstudio-plain.svg"/>
    
<img align="center" alt="Insomnia" height="40" width="40" src="https://seeklogo.com/images/I/insomnia-logo-A35E09EB19-seeklogo.com.png"/>
  
<img align="center" alt="Android Studio" height="40" width="40" src="https://2.bp.blogspot.com/-tzm1twY_ENM/XlCRuI0ZkRI/AAAAAAAAOso/BmNOUANXWxwc5vwslNw3WpjrDlgs9PuwQCLcBGAsYHQ/s1600/pasted%2Bimage%2B0.png"/>
  
<img align="center" alt="Wp" height="40" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/wordpress/wordpress-plain.svg"/>
          
</div>
  
  ## 📫 How to reach me?
<div> 
  <a href="https://www.linkedin.com/in/gustavohmachado/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
  <a href="https://www.instagram.com/gustavoaxe/" target="_blank"><img src="https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white" target="_blank"></a>  
 <div> 
   
![Snake animation](https://github.com/GustavoMachado22/GustavoMachado22/blob/output/github-contribution-grid-snake.svg)
   

