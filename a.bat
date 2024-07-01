@echo off
echo [PROCESSING...] git pull
git pull
echo [PROCESSING...] git add --all .
git add --all .
if [%1] EQU [] (
echo [PROCESSING...] git commit -m "gitTest Project %date%-[%time:~5,0%]"
git commit -m "gitTest Project %date%-[%time:~0,5%]"
) else (
echo [PROCESSING...] git commit -m %1
git commit -m %1
)
echo [PROCESSING...] git push
echo =====================================
echo .
git push
