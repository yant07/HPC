Exercise 2
==========

Get help section for a module

.. code::

   module help Anaconda2
   ml help Anaconda2

Get whatis section of module

.. code::

   module whatis Anaconda2
   ml whatis Anaconda2

Show module content. This will show content of module file 

.. code::

   module show Anaconda2

To view full content of module

.. code::

   ml show --raw Anaconda2


Listing modules as a table

.. code::

   ml purge
   ml intel
   ml tablelist
   module tablelist


We have set module families at Compiler and MPI level see what happens when you do the following

.. code::

   ml purge
   ml GCC/5.0.4-2.27
   ml
   ml intel/2017.01
   ml
   ml OpenMPI
   

Lmod sets environment variables ``LMOD_FAMILY_<family-name>`` when loading family modules

.. code::

   env | grep LMOD_FAMILY

Module collections
------------------

If you want to reuse a set of modules try using module collections. Module collections
consist of a set of modules that can be loaded without having to load them manually. 

Let's load a few modules and save them

.. code::

        ml purge
        ml GCC/5.4.0-2.27 OpenMPI/2.0.0
        ml save


By default your collection will be named ``default`` and all module collections are
stored in $HOME/.lmod.d/

You can add multiple collections using ``module save <collection-name>``. Let's add
a 2 more collections

.. code::

        ml purge
        ml intel R
        ml save R

.. code::

        ml purge
        ml intel Python
        ml save Python


To view all your collections you can run ``ml savelist``

.. code::

        ml savelist

To view modules in a collection you can run ``ml describe <collection-name>``

.. code::

        ml describe 
        ml describe R

To restore a collection in your user shell use ``ml restore <collection-name>``

.. code::

        ml purge
        ml restore R
        ml


Searching for modules with ``module spider``
--------------------------------------------


Lmod can search for modules based on MODULEPATH environment and it can be used 
to search all modules in all module trees.

Run ``module spider`` this will result in a long output

.. code::

   module spider

To search a specific module

.. code::

   module spider GCC

To view a specific module version 

.. code::

   module spider GCC/5.4.0-2.27


To view hidden modules with ``module av``

.. code::

        module av --show-hidden

To view hidden modules with ``module spider``

.. code::

        ml spider flex
        ml spider --show-hidden flex





   