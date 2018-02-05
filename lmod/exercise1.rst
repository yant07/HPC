Exercise 1
==========

First set your MODULEPATH to the following module tree

.. code::

	export MODULEPATH=$ROOT/modules/ex1:$MODULEPATH

Run ``ml av`` to see the new module tree

Try loading a module

.. code::

	module purge
	module load intel

Try loading modules 

.. code::

	module purge
	module load Go 
	module load Anaconda2

Try loading same two modules in one line

.. code::

	module purge
	module load Go Anaconda2

Try swaping one module with another

.. code::

	module purge
	module load Go Anaconda2
	module swap Go Inspector

Try loading a module and unload another

.. code::

	module purge
	module load Go Inspector
	module load intel
	module unload Inspector

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
	

Try listing modules


.. code::
        
      module purge
      ml intel
      ml
      module list

      


