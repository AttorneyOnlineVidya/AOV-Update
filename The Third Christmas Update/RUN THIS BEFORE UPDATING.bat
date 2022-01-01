del "base\sounds\music\[AOV] anime.opus"
del "base\evidence\DDCaseCandice.png"
del "base\evidence\AACastButz2.png"
del "base\evidence\AACastButz3.png"
del "base\evidence\AACastOldbag2.png"
del "base\evidence\AACastPhoenix2.png"
del "base\evidence\AACastPowers2.png"
del "base\evidence\MiscBloodied_Bandges.png"
del "base\evidence\AAI2Blanket.png"
del "base\evidence\AAI2Chess.png"

rmdir "base\background\AJCourtSideJ" /q /s
rmdir "base\background\AJCourtSideJW" /q /s
rmdir "base\background\AJCourtSideW" /q /s
rmdir "base\characters\Diane" /q /s

del /S /Q base\characters\Trucy_Red\*.gif
del /S /Q base\sounds\general\sfx-blip*.wav
del "base\sounds\music\[AOV] Contest C.opus"
del "base\sounds\music\[AOV] Contest D.opus"
del "base\sounds\music\[AOV] Contest E.opus"

ren "base\sounds\music\[AOV] Contest A.opus" "[AOV] Contest D.opus"
ren "base\sounds\music\[AOV] Contest B.opus" "[AOV] Contest E.opus"

pause