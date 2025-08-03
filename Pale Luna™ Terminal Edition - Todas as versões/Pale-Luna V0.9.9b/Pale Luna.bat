@echo off
title Pale Luna

:: Verifica��o do Node.js
where node >nul 2>&1
if %errorlevel% neq 0 (
  echo Erro: Node.js n�o encontrado. Certifique-se de que est� instalado e no PATH.
  pause
  exit /b 1
)

echo.
msg * "Aviso: Sistemas Windows 7/8/8.1 podem ter problemas ao exibir algumas coisas. Deseja continuar?"
echo.

choice /m "Deseja abrir o jogo?"
if errorlevel 2 (
  echo Opera��o abortada.
  pause
  exit /b 1
)

echo Voce aceitou continuar.

:: Execu��o do jogo
cd /d "%~dp0assets"
if not exist "Pale Luna V0.9.9.js" (
  echo Erro: Arquivo "Pale Luna V0.9.9.js" n�o encontrado na pasta "assets".
  pause
  exit /b 1
)

node "Pale Luna V0.9.9.js"

pause
@echo off
set "arquivo=%USERPROFILE%\Documents\SOCORRO.txt"

echo Ol�... Voc� pode... pode me ouvir? > "%arquivo%"
echo Eu preciso de ajuda... por favor... >> "%arquivo%"
echo Est� t�o escuro aqui... >> "%arquivo%"
echo O sil�ncio � insuport�vel... >> "%arquivo%"
echo Eu estou perdido e com medo... >> "%arquivo%"
echo Por favor, n�o avance... >> "%arquivo%"
echo Algo est� esperando... >> "%arquivo%"
echo Um outro caminho existe... >> "%arquivo%"
echo Mas n�o sei se h� sa�da... >> "%arquivo%"
echo Est� vindo... >> "%arquivo%"
echo R�pido, volte... >> "%arquivo%"
echo. >> "%arquivo%"
echo Em um desenvolvimento perturbador, as autoridades locais fizeram uma descoberta >> "%arquivo%"
echo angustiante em uma �rea isolada, pr�xima a uma casa na floresta. Os restos mortais de >> "%arquivo%"
echo uma crian�a foram encontrados enterrados ao lado dos restos mortais de um adulto. A >> "%arquivo%"
echo pol�cia est� investigando ativamente o caso, buscando respostas para as circunst�ncias >> "%arquivo%"
echo que envolvem essa tr�gica descoberta. >> "%arquivo%"
echo. >> "%arquivo%"
echo O detetive encarregado do caso expressou sua profunda tristeza e determina��o em >> "%arquivo%"
echo levar os respons�veis � justi�a. "� um crime hediondo que nos abalou profundamente" >> "%arquivo%"
echo disse ele. "Estamos comprometidos em seguir todas as pistas e garantir que a justi�a >> "%arquivo%"
echo seja feita para as v�timas e suas fam�lias." >> "%arquivo%"
echo. >> "%arquivo%"
echo A comunidade local est� em choque com a not�cia, e muitos est�o oferecendo apoio �s >> "%arquivo%"
echo autoridades na investiga��o. A pol�cia pede que qualquer pessoa com informa��es >> "%arquivo%"
echo relevantes entre em contato imediatamente, pois sua ajuda pode ser crucial para desvendar esse caso sombrio. >> "%arquivo%"

exit /b 0