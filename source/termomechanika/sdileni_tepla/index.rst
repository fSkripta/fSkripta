.. _tm-sdilenitepla:

Sdílení tepla
#############

Rozlišujeme tři způsoby sdílení tepla:

  * :ref:`kondukci <tm-st-vedeni>` (sdílení tepla vedením),
  * :ref:`konvekci <tm-st-konvekce>` (sdílení tepla prouděním) a 
  * :ref:`radiaci <tm-st-radiace>` (sdílení tepla zářením)

.. _tm-st-vedeni:

Vedení
======
 
Sdílení tepla vedením se odehrává na mikroskopické úrovni předáváním kinetické energie mezi částicemi.
Významné je především v pevných látkách, u tekutin bývá většinou zanedbatelné ve srovnání s konvekcí.
Tuto (ne)zanedbatelnost je možno kvantifikovat pomocí Pécletova čísla. 
To porovnává váhy - nebo pro lepší představu časová měřítka - konvektivních a difusních jevů.
Malé Pécletovo číslo u tekutin se dosahuje například v porézních látkách.

Vedení tepla je popsáno *Fourierovým zákonem* (rce. :math:numref:`eq-tm-st-vedeni-fourier`).

.. math:: 
  :label: eq-tm-st-vedeni-fourier

  \dot{q} = - \lambda \nabla T, \ \lambda > 0

Hybnou silou vedení tepla je teplotní gradient.
Veličinami s blízkým vztahem k tepelné vodivosti :math:`\lambda` [W/(m K)] jsou tepelný odpor R [K/W] a tepelná rezistivita :math:`R_\lambda` [K m/W].



.. _tm-st-konvekce:

Konvekce
========

Sdílení tepla prouděním, konvekce, je popsáno *Newtonovým ochlazovacím zákonem* (rce. :math:numref:`eq-tm-st-konvekce-newton`).

.. math:: 
  :label: eq-tm-st-konvekce-newton

  \dot {Q} = \alpha A (T-T_\infty )= \alpha A \Delta T 

Konvekce je charakterizována součinitelem přestupu tepla :math:`\alpha` [W/(m\ :sup:`2` K)]
Vzhledem ke složitosti závislosti :math:`\alpha` na širokém spektru parametrů se problematika zpracovává přes podobnostní čísla.
Přechod z oblasti podobnostních čísel se provádí za pomoci vztahu mezi :ref:`Nusseltovým číslem <tm-pod-nu>` a součinitelem přestupu tepla:

.. math:: 
  :label: eq-tm-st-vedeni-alpha

  \alpha = \mathrm{Nu} \frac{\lambda}{D} 


Volná konvekce je vyvolána teplotními rozdíly v tekutině, které vedou na rozdíly v hustotě, které mají v gravitačním poli za následek pohyb tekutiny.
Vztlakové a proti nim působící vazké síly charakterizuje :ref:`tm-pod-ra`.
Nucená konvekce je vyvolána vynuceným prouděním tekutiny.
Smíšená konvekce se uvažuje, není-li zanedbatelný ani jeden z uvedených typů.

.. _tm-st-radiace:

Radiace
=======

Těleso o teplotě T emituje svým povrchem do okolí teplo:

.. math::
  :label: eq-tm-st-radiace

  \dot{Q} = \epsilon \sigma A~T^4, \, \sigma = 5.670 \cdot 10^{-8}


.. admonition:: Zdroje

  Užitečným zdrojem pro studium jsou např. skripta :cite:p:`nozicka_zaklady_2001`.
  Části kapitoly jsou doslovnými citacemi diplomové práce :cite:p:`kreuzova_model_2022` autorky této kapitoly. 
  
