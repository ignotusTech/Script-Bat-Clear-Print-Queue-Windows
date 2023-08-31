@echo off
@title Restarting the Print Queue and Clearing the Queue/ Reiniciando a Fila de Impressao e Limpando a Fila
@echo ##########################################################################################################
@echo Restarting the Print Queue and Clearing the Queue / Reiniciando a Fila de Impressao e Limpando a Fila
@echo ##########################################################################################################
@echo.
@echo ## The command below, for stop the print service / O comando abaixo, para o servico de impressao
@echo.
net stop spooler 
@echo.
@echo ## The command below deletes all documents in the queue / O comando abaixo, exclui todos os documentos na fila
@echo.
del *.SHD c:\Windows\System32\spool\PRINTERS\ /Q
del *.SPL c:\Windows\System32\spool\PRINTERS\ /Q
@echo.
@echo ## The command below starts the print service / O comando abaixo, inicia o servico de impressao
@echo.
net start spooler
@echo #####################################################
@Echo Process Terminated / Processo Terminado
@echo #####################################################
echo.
pause
exit