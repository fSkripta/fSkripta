.. _km-reynoldsuvtransportniteorem:

Reynoldsůsv transportní teorém
##############################

Reynoldsův teorém je základní větou a nástrojem v mechanice kontinua a přidružených disciplínách. Používá se pro bilancování veličin či konstrukci zákonů zachování.

Reynoldsův transportní teorém - znění
=====================================

Reynoldsůsv transportní teorém *(občas se můžeme setkat i s označením Leibnitzův-Reynoldsůsv teorém, neboť se jedná o rozšíření Lebnitzova integrálního pravidla)* dává do souvislosti


.. math::
  :label: mk_rtt

    \frac{\text{d}}{\text{d}t}\int_\mathcal{V(t)}\phi(t, \mathbf{x}) \text{d}\mathbf{x} =  \int_\mathcal{V(t)} \frac{\partial \phi(t, \mathbf{x}) }{\partial t} + \nabla \cdot ( \phi \mathbf{V}(t, \mathbf{x}) )\text{d}\mathbf{x}

Výše uvedené vztahy lze číst jako "**Celková změna** veličiny :math:`\phi` v kontrolním objemu :math:`\mathcal{V}(t)` je dána **časovou změnou** veličiny :math:`\phi` v kontrolním objemu a **tokem** veličiny :math:`\phi` skrze hranici kontrolního objemu."

Vztah :math:numref:`mk_rtt` lze přepsat pomocí materiálové derivace jako

.. math::
  :label: mk_rtt_materialova_derivace

    \frac{\text{d}}{\text{d}t}\int_\mathcal{V(t)}\phi(t, \mathbf{x}) = \int_\mathcal{V(t)} \frac{\text{D} \phi(t, \mathbf{x}) }{\text{D} t} + \phi (t, \mathbf{x}) \nabla \cdot \mathbf{V}(t, \mathbf{x}) \text{d}\mathbf{x}.


Odvození
********
Vztah pro hodnotu veličiny v kontrolním objemu :math:`\mathcal{V}(t)` pomocí věty o substituci převedeme do referenční konfigurace :math:`\mathcal{V}_0`. Tím se ve výrazu objeví jakobián transformace :math:`| \text{det}\mathbb{F}(t, \mathbf{X})|` Proměnnou v aktuální konfiguraci :math:`\phi(t, \mathbf{x})` následně přepíšeme pomocí jejího vyjádření v referenční konfiguraci :math:`\phi(t, \mathbf{x}) = \phi(t, \mathbf{x}(t, \mathbf{X})) = \varphi(t, \mathbf{X})`

.. math::
  :label: mk_rtt_odvozeni_part1

  \frac{\text{d}}{\text{d}t}\int_\mathcal{V(t)}\phi(t, \mathbf{x}) &= \frac{\text{d}}{\text{d}t}\int_\mathcal{V_0} \phi(t, \mathbf{x}(t, \mathbf{X})) | \text{det}\mathbb{F}(t, \mathbf{X})|\text{d}\mathbf{X}

  &= \frac{\text{d}}{\text{d}t}\int_\mathcal{V_0} \varphi(t, \mathbf{X}) | \text{det}\mathbb{F}(t, \mathbf{X})|\text{d}\mathbf{X}

Nyní lze bez problémů vtáhnout časovou derivaci dovnitř integrálu, neboť oblast :math:`\mathcal{V}_0`, přes kterou probíhá integrace v referenční konfiguraci je konstantní a v čase neměnná. Změna veličiny proto není ovlivněna změnou oblasti.

.. math::
  :label: mk_rtt_odvozeni_part2

  \frac{\text{d}}{\text{d}t}\int_\mathcal{V_0} \varphi(t, \mathbf{X}) | \text{det}\mathbb{F}(t, \mathbf{X})|\text{d}\mathbf{X} &= \int_\mathcal{V_0} \frac{\partial}{\partial t} \left( \varphi(t, \mathbf{X}) | \text{det}\mathbb{F}(t, \mathbf{X})| \right) \text{d}\mathbf{X}

  &= \int_\mathcal{V_0} \frac{\partial \varphi(t, \mathbf{X}) }{\partial t} | \text{det}\mathbb{F}(t, \mathbf{X})|   +  \varphi(t, \mathbf{X})\frac{\partial | \text{det}\mathbb{F}(t, \mathbf{X})| }{\partial t} \text{d}\mathbf{X}.

Dále využijeme vztahu pro časovou derivaci determinantu deformačního gradientu (TODO:ref) :math:`^{\partial (\text{det}\mathbb F)} \! / _{\partial t} = \text{det}\mathbb F \nabla\cdot \mathbf{V}`

.. math::
  :label: mk_rtt_odvozeni_part3

  \int_\mathcal{V_0} \frac{\partial \varphi(t, \mathbf{X}) }{\partial t} | \text{det}\mathbb{F}(t, \mathbf{X})|   +  \varphi(t, \mathbf{X})\frac{\partial | \text{det}\mathbb{F}(t, \mathbf{X})| }{\partial t} \text{d}\mathbf{X}

  = \int_\mathcal{V_0} \left( \frac{\partial \varphi(t, \mathbf{X}) }{\partial t}  +  \varphi(t, \mathbf{X})\nabla\cdot\mathbf{V} \right)| \text{det}\mathbb{F}(t, \mathbf{X})| \text{d}\mathbf{X}.

Nyní se lze začít vracet od referenční konfigurace k aktuální

.. math::
  :label: mk_rtt_odvozeni_part4

  \int_\mathcal{V_0} \left( \frac{\partial \varphi(t, \mathbf{X}) }{\partial t}  +  \varphi(t, \mathbf{X})\nabla\cdot\mathbf{V} \right)| \text{det}\mathbb{F}(t, \mathbf{X})| \text{d}\mathbf{X} &= \int_\mathcal{V_0} \left( \frac{\partial \varphi }{\partial t}  +  \varphi\nabla\cdot\mathbf{V} \right)\bigg|_{(t,  \mathbf{X})} | \text{det}\mathbb{F}(t, \mathbf{X})| \text{d}\mathbf{X}

  &= \int_\mathcal{V_0} \left( \frac{\text{D} \phi }{\text{D} t} + \phi \nabla \cdot \mathbf{V}\right)\bigg|_{(t, \mathbf{x}(t, \mathbf{X}))} | \text{det}\mathbb{F}(t, \mathbf{X})| \text{d}\mathbf{X}

  &= \int_\mathcal{V(t)} \frac{\text{D} \phi(t, \mathbf{x}) }{\text{D} t} + \phi(t, \mathbf{x}) \nabla \cdot \mathbf{V}(t, \mathbf{x}) \text{d}\mathbf{x}

kde jsme na druhém řádku přešli od proměnné v referenční konfiguraci :math:`\phi` k proměnné v aktuální konfiguraci :math:`\varphi` (povšimněte si změny argumentů) a na třetím řádku jsme provedli přechod zpět od referenční konfiguraci k aktuální konfiguraci.
Výše uvedený vztah odpovídá rovnici :math:numref:`mk_rtt_materialova_derivace`. Vztah :math:numref:`mk_rtt` získáme rozepsáním materiálové derivace

.. math::
  :label: mk_rtt_odvozeni_part5

  \frac{\text{d}}{\text{d}t}\int_\mathcal{V(t)}\phi(t, \mathbf{x}) &= \int_\mathcal{V(t)} \frac{\text{D} \phi(t, \mathbf{x}) }{\text{D} t} + \phi(t, \mathbf{x}) \nabla \cdot \mathbf{V}(t, \mathbf{x}) \text{d}\mathbf{x}

  &= \int_\mathcal{V(t)} \left( \frac{\partial \phi }{\text{D} t} + \mathbf{V} \cdot \nabla \phi + \phi \nabla \cdot \mathbf{V} \right) \bigg|_{(t, \mathbf{x})} \text{d}\mathbf{x}

  &= \int_\mathcal{V(t)} \frac{\partial \phi(t, \mathbf{x}) }{\text{D} t} + \nabla\cdot(\phi\mathbf{V}) \text{d}\mathbf{x}


Reynoldsův transportní teorém pro specifické veličiny
*****************************************************
Předpokládejme nyní, že máme specifickou veličinu (vztaženou na jednotku hmotnosti) :math:`\psi`, odpovídající veličině :math:`\phi`, tak, že :math:`\phi = \rho\psi`. Dosazením do rovnice :math:numref:`mk_rtt_materialova_derivace` lze psát (pro přehlednost již s vynecháním argumentů)

.. math::
  :label: mk_rttspec_materialova_derivace_odvozeni

    \frac{\text{d}}{\text{d}t}\int_\mathcal{V(t)}\rho(t, \mathbf{x})\psi(t, \mathbf{x})\text{d}\mathbf{x} &= \int_\mathcal{V(t)} \rho(t, \mathbf{x})\frac{\text{D} \left( \rho \psi \right) }{\text{D} t} + \rho\psi\nabla\cdot\mathbf{V} \text{d}\mathbf{x}.

  &= \int_\mathcal{V(t)} \rho(t, \mathbf{x})\frac{\text{D} \left( \rho \psi \right) }{\text{D} t} + \psi \left(  \frac{\text{D} \rho  }{\text{D} t} +\rho\nabla\cdot\mathbf{V} \right) \text{d}\mathbf{x}.

Poslední člen na pravé straně je díky rovnici kontinuity (TODO: ref) nulový. Získáváme tak Reynoldsův transportní teorém ve formě pro specifickou veličinu

.. math::
  :label: mk_rttspec_materialova_derivace

    \frac{\text{d}}{\text{d}t}\int_\mathcal{V(t)}\rho(t, \mathbf{x})\psi(t, \mathbf{x})\text{d}\mathbf{x} = \int_\mathcal{V(t)} \rho(t, \mathbf{x})\frac{\text{D} \psi(t, \mathbf{x}) }{\text{D} t} \text{d}\mathbf{x}.
