# gh-pages

Tato branch slouží k publikaci html souborů na `fSkripta.github.io`.

Pro publikování:

  * lokálně se přepněte na branch gh-pages (`git checkout gh-pages`)
  * `./make`
  * seznamte git s novými soubory (`git add docs/<novéSoubory>`)
  * proveďte commit
  
    | **Pozn.:**
        Commitujte jen nové a modifikované soubory ve složce docs! Vyhněte se `-a`.
        `git status` může být trochu zmatený, tvrdí, že existují soubory, které make soubor vytvořil a zase smazal. Nevadí, `push` ani `commit` zmatení nebudou.
  
  * `git push`
  * při návratu na main může být nutné provést `git restore source Makefile make.bat`

| **Pozn.:** ano, tento postup je velmi krkolomný a měli bychom využít pipeliny
