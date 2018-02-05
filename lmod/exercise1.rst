Exercise 1
==========

Approx Time: 7 mins

View module all modules in system

.. code::

        module av

Search for a module gcc

.. code::

        module av gcc


Try loading a module

.. code::

	module purge
	module load intel
        module list

Try loading modules 

.. code::

	module purge
	module load Go 
	module load Anaconda2
        module list

Try loading same two modules in one line

.. code::

	module purge
	module load Go Anaconda2
        module list


Try swaping one module with another

.. code::

	module purge
	module load Go Anaconda2
        module list
	module swap Go Inspector
        module list


Swap with ``sw`` and ``switch``

.. code::

        module purge
        module load Go Anaconda2
        module sw Go Inspector
        module list
        module switch Inspector Go
        module list



Try loading a module and unload another

.. code::

	module purge
	module load Go Inspector
	module load intel
        module list
	module unload Inspector
        module list



Try loading intel and Inspector in the same line

.. code::

	module purge
	module load Go Inspector
	module load intel unload Inspector

You should get an error, try this

.. code::

	module purge
	module load intel Inspector
	ml intel -Inspector
        module list
	

Try listing modules


.. code::
        
      module purge
      ml intel
      ml
      module list

      


