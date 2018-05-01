# Test the hidden relation for quadratic endomorphisms with an invariant line

Consider a quadratic endomorphism *F* of the complex projective plane having isolated fixed points only. The **spectra of fixed points** is the collection of the spectra of the derivative of *F* at each of the fixed points. These numbers satisfy certain algebraic relations coming from the holomorphic Lefschetz fixed point theorems, and from the Camacho-Sad and the Baum-Bott index theorems for foliations. Other relations on spectra are known to exist but have never been described.

This repository deals with quadratic endomorphisms having an invariant line. In this case there is one more *hidden relation*.

The object of this repository is to do the following:

* Given a collection of numbers `[t_0, t_1, t_2, t_3, d_0, d_1, d_2, d_3, L]`, test if there is an obstruction for finding an endomorphism *F* that realizes that spectra.

**Remarks:** 

* It is not necessary to compute the *hidden relation* in order to perform the test.

* To avoid working with rationals in python the value of `L` is stored as `[L.numerator, L.denominator]`.


## Main components:

* The code to perform the analysis is contained in `m2-code/hidden-source.m2`.

* A Jupyter notebook `compute-hidden-interactive.ipynb` that computes the *hidden relation* from given values for `[t_0,...,d_3]`.

* The file `data/values.txt` contains a list of values that need to be tested.

* The script `test-all-values.py` calls Macaulay2 to test each line of `data/values.txt`


## Results:

Depending whether or not a collection passes the test it is recorded in one of the following files in `data/`:

* `results-admissible.csv`

* `results-non-admissible.csv`


### Output format:

The output is stored in the following format.

`Line number, Spectra, [codim J, degree gens J], [codim I, degree gens I], [codim K, degree gens K]`

where 

* `J` is the ideal obtained from the 5 Jacobi relations after eliminating `x_3, y_3`. This ideal contains the information of whether the finite spectra `[t_0,...,d_3]` is admisible or not.

* `I` is the ideal of all relations, obtained by adding to `J` the formulas for `t_k, d_k, L` in terms of the coefficients `c_j` of the *associated vector field*, and then eliminating the variables `c_j`. This ideal contains the information of whether the whole spectra `[t_0,...,d_3, L]` is admisible or not.

* `K` is obtained from the ideal of all relations, but this time we eliminate all variables *except* the `a, b, c_j`. This ideal contains the information of whether or not the spectra `[t_0,...,d_3, L]` is actually realizable.

The codimensions of `J` and `I` are with respect to the ring `QQ[a,b]`. A generic admissible tuple should return `codim J = codim I = 2` (ie the solutions are finite) and `degree gens J = degree gens I = [1, 2]` (ie there are two solutions given by the intersection of a line and a conic).

The codimension of `K` is with respect to `QQ[c_0,...,c_5,a,b]`. A "generic" tuple with rational `L` should return `codim K = 8` (finite number of solutions) and `degree gens K = [1, 1, 1, 1, 1, 1, 1, 2]`. This implies that there are exactly two solutions for `(a,b,c_j)`.

Note that the spectra is non-admissible if and only if the system of equations doesn't have a solution. This is equivalent to `I = (1)`. In this case we get `codim I = 'infinity'`, `degree gens I = [0]`. 


## Additional material:

* The values in `values.txt` were extracted from `raw-input.txt` using `extract-values.py`.

* The script `test-old-relations.py` verifies that these values satisfy the previously known *classical* relations.

* The branch `via-h-algorithm` tries to perform the test by computing the *hidden relation* and evaluating it at `L`.
