rmdir "base\characters\William" /s /q
rmdir "base\characters\Garan" /s /q
rmdir "base\characters\Venus" /s /q
rmdir "base\characters\Aura" /s /q
ren "base\sounds\music\[FF] Suspense.*" "[FFX] Suspense.*"
ren "base\sounds\music\[FF] Prelude.*" "[FFVII] Prelude.*"
ren "base\sounds\music\[AAI2] Jeffery Master - Sweet Happiness.*" "[AAI2] Jeffrey Master - Sweet Happiness.*"
del "base\sounds\music\[AOV] anime.opus" /s /q
del "base\sounds\music\[GSM] Questioning (Allegro).*" /s /q

echo "completed"
exit