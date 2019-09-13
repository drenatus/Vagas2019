Instruçoes para rodar no windows:

1 - clonar o projeto 
2 - instalar o ruby
3 - instalar o gems
4 - registrar o drive do firefox (geckodriver) nas variaveis de ambiente: acessar Propriedades do Sistema, Variáveis de Ambiente. 
Adicionar o caminho XXX:\TesteVagas\drivers em "Path" nas variáveis de ambiente para os usuários e para o sistema (Path, Editar, Novo, colar o caminho completo, OK.) Os drivers estão incluidos no projeto
5 - atraves do gems, instalar selenium, rspec, selenium webdriver, cucumber, watir e capybara (ou via bundler, digitar bundler install. Estão todos no gemfile)
6 - via linha de comando, acessar o diretorio do projeto (em features) e digitar "cucumber"
