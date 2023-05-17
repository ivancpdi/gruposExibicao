-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local backGroup = display.newGroup () -- back usado para plano de fundo, decorações que não terão interação com o jogo.

local mainGroup = display.newGroup () -- Usado para os objetos que terão interação dentro do jogo, grupo principal.

local uiGroup = display.newGroup () -- Utilizado para placar, vidas, texto, que ficarão na frentye do jogo porém sem interação.

-- Método embutido:
-- Inclui o objeto no grupo já na sua criação.

local bg = display.newImageRect (backGroup, "imagens/bg.jpg", 509 * 2,  339 * 2)

bg.x = display.contentCenterX
bg.y = display.contentCenterY

-- Metodo direto
-- Inclui o objeto depois da sua criação
local chao = display.newImageRect ("imagens/chao.png", 4503 / 5, 613 / 5)
chao.x = display.contentCenterX
chao.y = 430

mainGroup:insert (chao)

-- Sol 

local solBackgroupIndireto = display.newImageRect ("imagens/sun.png", 256 / 5, 256 / 5)
solBackgroupIndireto.x = 30
solBackgroupIndireto.y = display.contentCenterX - 100

local solBackgroupDireto = display.newImageRect ("imagens/sun.png", 256 / 5, 256 / 5)
solBackgroupDireto.x = 30
solBackgroupDireto.y = display.contentCenterX 

backGroup:insert (solBackgroupDireto)
 
-- Nuvem

local nuvemBackgroupIndireto = display.newImageRect ("imagens/cloud.png", 2360 / 20, 940 / 20)
nuvemBackgroupIndireto.x = display.contentCenterX + 60
nuvemBackgroupIndireto.y = display.contentCenterX - 200

local nuvemBackgroupDireto = display.newImageRect ("imagens/cloud.png", 2360 / 20, 940 / 20)
nuvemBackgroupDireto.x = 100
nuvemBackgroupDireto.y = display.contentCenterX - 200

backGroup:insert (nuvemBackgroupDireto)

-- Arvores

local arvoresMaingroupIndireto = display.newImageRect ("imagens/tree.png", 1024 / 20, 1024 / 20)
arvoresMaingroupIndireto.x = display.contentCenterX + 60
arvoresMaingroupIndireto.y = display.contentCenterX + 210

local nuvemMaingroupDireto = display.newImageRect ("imagens/tree.png", 1024 / 20, 1024 / 20)
nuvemMaingroupDireto.x = 100
nuvemMaingroupDireto.y = display.contentCenterX + 210

mainGroup:insert (nuvemMaingroupDireto)

chao:toFront ()