# [fSkripta](https://fskripta.github.io/)
Soubor poznámek a příkladů z přednášek a cvičení [FS ČVUT](https://fs.cvut.cz).

Naší snahou je vytvořit soubor poznámek a příkladů z přednášek a cvičení [FS ČVUT](https://fs.cvut.cz), který může každý opravovat či rozšiřovat. Tento formát je silně motivován [lékařskými WikiSkripty](https://www.wikiskripta.eu/w/Home>) a [WikiSkripty FJFI](http://wikiskripta.fjfi.cvut.cz/wiki/index.php/Hlavn%C3%AD_strana>), věčnými připomínkami o absenci ucelených materiálů a tím, že si spoustu studentů během studia některé poznámky kvalitně zpracuje a mohlo by být přínosné dát tyto materiály dohromady. Je zvolen tak, aby byl po vzoru [Wikipedie](https://cs.wikipedia.org/wiki/Hlavn%C3%AD_strana>) modulární, mezi jednotlivými tématy a pojmy šlo snadno přecházet a aby bylo možné doplňovat například jen malé části a vytvářet sekce pro nová témata a předměty. Vybrané pasáže je však zároveň možné vyexportovat jako souvislý text k tisku.

## Jak přispívat do [fSkript](https://fskripta.github.io/)?

Váš příspěvek je žádoucí, bez ohledu na to, jestli umíte pracovat s gitem, githubem, znáte reStructredText, Sphinx a nebo jsou Vám všechny tyhle pojmy cizí. Prohlédněte si diagram níže a najděte svou ideální cestu.

![diagramB](source/imgs/how_to/diagramB.svg#gh-light-mode-only)
![diagramW](source/imgs/how_to/diagramW.svg#gh-dark-mode-only)

### Jak jednoduše vytvořit příspěvek?

V této části se pokusíme popsat - v našich očích nejsnazší - způsob přispívání do fSkript. Nemusíte nic instalovat, všechno lze zvládnout v prohlížeči.

Budete potřebovat účet na githubu. Jako registrovaný uživatel si vytvoříte tzv. *fork*.
To bude vaše vlastní kopie repozitáře fSkript, kterou můžete upravovat jak se vám zachce (ale na `fskripta.github.io` se to zatím neobjeví).

  * [v originálním repozitáři](https://github.com/fSkripta/fskripta.github.io) klikněte na ikonu vidličky

    ![fork](source/imgs/how_to/L_newFork.png#gh-light-mode-only)
    ![fork](source/imgs/how_to/D_newFork.png#gh-dark-mode-only )

  * to vám umožní vytvořit vlastní fork, základní nastavení by mělo stačit (branch "`main`" je ta větev, ze které se generuje online obsah, proto vám ve standardních případech stačí kopírovat tu)
    
    ![fork2](source/imgs/how_to/L_newFork2.png#gh-light-mode-only)
    ![fork2](source/imgs/how_to/D_newFork2.png#gh-dark-mode-only )

Teď už můžete začít pracovat na vlastním forku. Aktuálně jsou ale oba repozitáře shodné, že pracujete na tom svém, zkontrolujete snadno, v hlavičce má ikonu vidličky a vše říkající popis:

  ![checkFork](source/imgs/how_to/L_checkFork.png#gh-light-mode-only)
  ![checkFork](source/imgs/how_to/D_checkFork.png#gh-dark-mode-only )

Je třeba se rozhodnout. Chcete upravovat již existující příspěvek, nebo vytvořit úplně nový? 

  * Chcete-li upravovat existující příspěvek a otevřete ho (struktura zdroje je velmi podobná generovanému webu, proto to nebude problém).
  
    * Klikněte na ikonu tužky.

      ![edit](source/imgs/how_to/L_edit.png#gh-light-mode-only)
      ![edit](source/imgs/how_to/D_edit.png#gh-dark-mode-only )

    * Otevře se vám online editor, ve kterém provedete zamýšlené změny.

      ![editor](source/imgs/how_to/L_editor.png#gh-light-mode-only)
      ![editor](source/imgs/how_to/D_editor.png#gh-dark-mode-only )

    * Ve chvíli, kdy jste se změnami spokojení, proveďte "commit". Je rozumné tzv. commit message neodbýt a stručně popsat změny. Titulek uveďte svými iniciálami a dvojtečkou.

      ![commit](source/imgs/how_to/L_commitMessage.png#gh-light-mode-only)
      ![commit](source/imgs/how_to/D_commitMessage.png#gh-dark-mode-only )

  * Chcete-li vytvářet nový příspěvek, nebo třeba připojit obrázek, využijte - ve složce, do které chcete přispět - funkcionalitu skrytou pod tlačítkem `Add file`.

    * To vám umožní nahrát soubor z vašeho zařízení nebo vytvořit nový textový soubor.

      ![addFile](source/imgs/how_to/L_addFile.png#gh-light-mode-only)
      ![addFile](source/imgs/how_to/D_addFile.png#gh-dark-mode-only )

    * Po nahrání následuje commit stejným způsobem, jako je popsáno výše.

[//]: # (doplnit merge request)

### Syntaxe

Chcete-li přispívat, pravděpodobně vás zajímá, jaké funkcionality můžete používat a jak se k nim dostat.
Využíváme [reStructuredText](https://docutils.sourceforge.io/rst.html), v podstatě se dá říct, že se jedná o celkem povedeného křížence LaTeXu a Markdownu. 

Z LaTeXu přebírá, mimojiné BibTeX a zápis rovnic. 
Chcete-li zapsat rovnici a odkázat na ni, můžete se inspirovat zde: 

```
Rovnice :math:numref:`fourieruv-zakon` popisuje vedení tepla.

.. math:: 
  :label: fourieruv-zakon

  \dot{q} = - \lambda \nabla T, \ \lambda > 0
```

Pro základní užití by vám mohly stačit příklady v již existujících článcích, se složitějšími problémy se obraťe na nás, Google, nebo oficiální stránku [reStructuredText](https://docutils.sourceforge.io/rst.html).


### Sphinx a lokální build

Pokud Vám něco říkají příkazy jako `git clone`, možná byste si chtěli vyzkoušet "zbuildit" fSkripta lokálně a zjistit, jak bude váš příspěvek vypadat ve výsledné verzi.

[//]: # (doplnit build)