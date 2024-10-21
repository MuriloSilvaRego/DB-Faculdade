INSERT INTO CONTA(NOME, EMAIL, SENHA)
VALUES("Denis", "denisdenis@gmail.com", "SenhaDoDenis123"),
      ("João", "JãoJão@gmail.com", "SenhaDoJão123"),
      ("Deyverson", "DeyvinhoMaiorQueMessi@gmail.com", "Libertadores2021");

INSERT INTO RACA(NOME, DESCRICAO)
VALUES("Humano", "Seres humanos, os seres que habitavam este plano antes da grande fenda conectar todos os reinos"),
      ("Elfo", "Criaturas amantes e protetoras da fauna e flora, alguns radicais dessa raça anseiam pela ruína das cidades de pedra e seu pleno reflorestamento"),
      ("Anão", "Uma raça de pequena estatura e muito orgulhosa de suas habilidades de moldar a terra, minérios são apenas mais uma materia trivial de construção e confecção"),
      ("Deyverson", "Simplesmente Deyverson");


INSERT INTO CLASSE(NOME, DESCRICAO)
VALUES("Guerreiro", "Uma classe focada no uso de armas corpo a corpo, alta aptidão com armaduras mais pesadas e baixa habilidade com armas de longo alcance"),
      ("Arqueiro", "Foco em combate a distância, pouca aptidão com armaduras e diversas táticas para ocultaão de presença"),
      ("Mago", "Foco em ataques instantâneos com alto custo de recursos e dano, nenhuma aptidão para armaduras e diversas táticas para controle do campo de batalha"),
      ("Ladrão", "Foco em ataques sorrateiros, baixa aptidão com armaduras e diversas táticas para facilitar ataques surpresa e ocultação");

INSERT INTO SEXO(NOME)
VALUES("Masculino"),
      ("Feminino"),
      ("Asexuado");

INSERT INTO TIPO_EQUIP(NOME)
VALUES("Armadura (Cabeça)"),
      ("Armadura (Tronco)"),
      ("Armadura (Braços)"),
      ("Armadura (Pernas)"),
      ("Acessório (Pescoço)"),
      ("Acessório (Anel)"),
      ("Arma (Espada longa)"),
      ("Arma (Espada curta)"),
      ("Arma (Arco)"),
      ("Arma (Balestra)"),
      ("Arma (Cajado)"),
      ("Arma (Escudo)");

INSERT INTO ESTILO_COMB(NOME)
VALUES("Corpo a corpo (Atk)"),
      ("Corpo a corpo (Def)"),
      ("Corpo a corpo (Equ)"),
      ("Longa distância"),
      ("Média distância"),
      ("Defesa"),
      ("Armadura");

INSERT INTO EFEITOS(DESCRICAO, NOME)
VALUE("Aumenta número de ataques neste turno em 1", "Além do limite"),
     ("Ganha vantagem contra ataques inimigos por 3 turnos", "Cautela"),
     ("Auemnta o dano da arma corpo  corpo equipada em 4", "Afiação"),
     ("Ganha vantagem no próximo ataque", "Concentração"),
     ("Aumenta o alcance das magias do usuário em 15 metros durante este turno", "Mago atirador"),
     ("O inimigo que leva 8 ou mais de dano desta arma recebe a condição sagramento", "Feridas abertas");
