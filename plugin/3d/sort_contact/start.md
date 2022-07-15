# Sort contact

**Plugin to create a resistive layer between 2 materials in order to
compute effective transport properties.**

## Description

Transport properties (conduction, permeability, \...) can be computed on
tomography images using various softwares. For heat conduction for
example, each voxel is assigned an intrinsic conductivity and the
effective conductivity is computed by solving the heat equation on the
system.

In some cases, a resistance on the transport can appear at an interface
between 2 materials. For example, in Solid Oxide Fuel Cell (SOFC), a
cathode is made with 2 types of conductors: an electronic conductor
which brings electrons to a reaction site, and an ionic conductor which
brings ions from the reaction site to an electrolyte. At the reaction
site, an electrochemical reaction occurs between a gas (oxygene for
exemple) and electrons to form an ion. This reaction induces a
resistance in the transport of species due to the charge transfer.

The plugin **Sort Contact** locate the reaction sites and replace the
contact between 2 types of material by a resistive layer. The value of
the resistance of this layer depends on the size of contact.

## Installation

1.  Download and Install ImageJ.
2.  [Install the plugin
    Analysis_3D](http://imagejdocu.tudor.lu/doku.php?id=plugin:morphology:analysis_3d:start)
3.  ![Download active_tpb.jar](/plugin/3d/sort_contact/active_tpb.jar)
    and ![active_tpb.txt](/plugin/3d/sort_contact/active_tpb.txt)
4.  Place them in the plugin directory of ImageJ folder.
