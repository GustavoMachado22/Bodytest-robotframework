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

## Autor

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/GustavoMachado22">
        <img src="https://avatars1.githubusercontent.com/u/64233343?s=460&u=acfd721126fe7ac25120ff18bb48f9badd9538c4&v=4" width="100px;" alt="Gustavo Machado"/>
        <br />
        <sub>
          <b>Gustavo Machado</b>
        </sub>
       </a>
       <br />
    </td>
  </tr>
</table>

