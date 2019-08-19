
class Setup
    $driver = nil
def self_setup
    # $driver=Selenium::WebDriver.for :chrome
    $driver=Selenium::WebDriver.for :firefox
    $driver.manage.window.maximize
    $driver.navigate.to url
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)

end

# def GerarCPF
#     # Total de cpfs que podem existir e passando em um while
#     inicio = Time.now
#     999999999.times do |ar|
#         # Criando o valor para somatoria
#         valor = 0
#         total = 0
#         valor_segundo = 0
#         total_segundo = 0
#
#         # Criando balanca para primeiro digito
#         digito_1 = [10,9,8,7,6,5,4,3,2]
#
#
#         # Criando o CPF random =)
#         cpf = Array.new(9) {| i | i = rand(10)}
#
#         # Percorrendo o array e fazendo * a balanca anterior para calcular o primeiro digito
#         9.times do |val|
#             total = digito_1[val] * cpf[val]
#             # Armarzenar o total para calcular o mod do primeiro numero
#             valor += total
#         end
#
#         # Agora faz a mod do valor total
#         primeiro_digito = valor%11
#
#         # Tem uma regra, se a MOD for menor que 2 o digito eh 0 caso contrario faca a mod - 11
#         if primeiro_digito < 2
#             primeiro_digito = 0
#         else
#             primeiro_digito = 11 - primeiro_digito
#         end
#
#         #  Para o cálculo do segundo dígito será usado o primeiro dígito verificador já calculado. Montaremos uma tabela semelhante a anterior só que desta vez usaremos na segunda linha os valores 11,10,9,8,7,6,5,4,3,2 já que estamos incorporando mais um algarismo para esse cálculo
#         digito_1.push(11).sort!.reverse!
#
#
#         # Passamos tambem o digito calculado para o array do cpf ja gerado
#         cpf.push(primeiro_digito)
#
#
#
#         10.times do |value|
#             total_segundo = digito_1[value] * cpf[value]
#             # Armarzenar o total para calcular o mod do segundo numero
#             valor_segundo += total_segundo
#         end
#
#         segundo_digito = valor_segundo%11
#
#         if segundo_digito < 2
#             segundo_digito = 0
#         else
#             segundo_digito = 11 - segundo_digito
#         end
#
#         # Retirar o ultimo digito que se duplica
#         cpf.pop
#
#         #puts "#{cpf.join("")}#{primeiro_digito}#{segundo_digito}"
#
#         # Gospe na tela
#         #puts " o cpf #{cpf.to_s} e #{valor} #{primeiro_digito}"
#         #puts "================"
#         #puts cpf
#         puts ar
#     end
#
#
#     fim = Time.now
#
#
#     end



end