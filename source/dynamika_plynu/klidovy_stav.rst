.. _dp-klidovystav:

Klidový (stagnační) stav
########################

Předpokládejme idealizované adiabatické proudění (není sdíleno teplo s okolím) bez konání technické práce.
V tom případě může energie nabývat pouze forem entalpie :term:`h` a kinetické energie.

.. math::
  :label: eq-dp-klidovystav-ene

  h + \frac{c^2}{2} = \mathrm{konst.}

Stav s nulovou rychlostí proudění :term:`c`, v němž entalpie nabývá maximální hodnoty (:math:`h_0`) budeme nazývat stagnační (klidový). 
Hodnoty veličin náležející tomuto stavu opatřujeme indexem :math:`_0` (:math:`h_0,\ p_0,\ T_0,\ \rho_0,\ ...`).

Pro celou soustavu, v níž lze proudění považovat za isoentropické, existuje jeden klidový stav.
Klidová teplota, tlak a entalpie jsou maximálními dosažitelnými hodnotami těchto veličin v dané soustavě.

S předpokladem ideálního plynu lze rovnici :math:numref:`eq-dp-klidovystav-ene` upravit následovně:

.. math::
  :label: eq-dp-klidovystav-ene-idplyn

  T + \frac{c^2}{2 c_p} = T_0

Člen :math:`^{c^2}\! /_{2 c_p}` označujeme jako **dynamickou teplotu**. O jeho hodnotu se zvýší teplota média, je-li z rychlosti :math:`c` isoentropicky uvedeno do klidu.

.. note:: Zbrždění nabíhajícího média je nezanedbatelným mechanismem ohřevu těles mj. při vstupu do atmosféry.

S využitím Saint-Venant - Wantzelovy rovnice lze - pro isoentropické proudění - vyjádřit vztah mezi místními a stagnačními hodnotami veličin:

.. math::

  \begin{align}
    \frac{T}{T_0}       & =        \frac{2}{\mathrm{Ma}^2 (\kappa - 1) +2}\\
    \frac{p}{p_0}       & = \left[ \frac{2}{\mathrm{Ma}^2 (\kappa - 1) +2} \right]^{\frac{\kappa}{\kappa-1}}\\
    \frac{\rho}{\rho_0} & = \left[ \frac{2}{\mathrm{Ma}^2 (\kappa - 1) +2} \right]^{\frac{     1}{\kappa-1}}
  \end{align}

.. admonition:: Zdroje

  Jako zdroj informací pro tuto kapitolu byla využita skripta :cite:p:`nozicka_dynamika_2005`.
