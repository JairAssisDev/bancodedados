SELECT atleta.nome, equipe.nome as nome_equipe
FROM atleta
JOIN equipe ON atleta.id_equipe = equipe.ID;


SELECT atleta.nome, posicao.nome as nome_posicao
FROM atleta
JOIN equipe ON atleta.id_equipe = equipe.ID
JOIN posicao ON atleta.id_posicao = posicao.ID
WHERE equipe.nome = 'Sport Recife';




SELECT jogo.data, equipe1.nome as nome_equipe1, equipe2.nome as nome_equipe2, estadio.nome as nome_estadio
FROM jogo
JOIN equipe as equipe1 ON jogo.id_equipe1 = equipe1.ID
JOIN equipe as equipe2 ON jogo.id_equipe2 = equipe2.ID
JOIN estadio ON jogo.id_estadio = estadio.ID;
