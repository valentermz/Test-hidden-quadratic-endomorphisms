# Test the hidden relation for quadratic endomorphisms with an invariant line

Consider a quadratic endomorphism *F* of the complex projective plane having isolated fixed points only. The **spectra of fixed points** is the collection of the spectra of *I - dF* (the identity matrix minus the derivative of *F*) at each of the fixed points. These numbers satisfy certain algebraic relations coming from the holomorphic Lefschetz fixed point theorems, and from the Camacho-Sad and the Baum-Bott index theorems for foliations. Other relations on spectra are known to exist but have never been described.

This repository deals with quadratic endomorphisms having an invariant line. In this case there is one more *hidden relation*.

The object of this repository is to do the following:

* Given a collection of numbers `[t_0, t_1, t_2, t_3, d_0, d_1, d_2, d_3, prodU, prodV sumU, sumV, xi]`, test if there is an obstruction for finding an endomorphism *F* that realizes that spectra.

**Remarks:** 

* It is not necessary to compute the *hidden relation* in order to perform the test.


## Main components:

* The code to perform the analysis is contained in `m2-code/test-source.m2`.

* A Jupyter notebook `compute-hidden-interactive.ipynb` that computes the *hidden relation* from given values for `[t_0,...,d_3]`.

* The file `data/values.txt` contains a list of values that need to be tested.

* The script `test-all-values.py` calls Macaulay2 to test each line of `data/values.txt`


## Results:

Depending whether or not a collection passes the test it is recorded in one of the following files in `results/`:

* `admissible.csv`

* `non-admissible.csv`


### Output format:

The output is stored in the following format.

`Line number, Spectra, [codim J, degree gens J], [codim I, degree gens I]`

where 

* `J` is the ideal obtained from the 5 Jacobi relations after eliminating `x_3, y_3`. This ideal contains the information of whether the finite spectra `[t_0,...,d_3]` is admisible or not, and it determines how many (potential) endomorphisms share the same spectra *over the distinguished affine chart*.

* `I` is the ideal of all relations, obtained by adding to `J` the formulas for `t_k, d_k` and several invariant functions in terms of the coefficients `a,b` and `c_j` of the *associated vector field*, and then eliminating the variables `c_j`. This ideal contains the information of whether the whole spectra is admisible or not.

The codimensions of `J` is with respect to the ring `QQ[a,b]` and the codimension of `I` is with respect to `QQ[a,b,c_0..c_5]`. A generic admissible tuple should return `codim J = 2` and `codim I = 8`. If the codimensions are bigger it means that there's a positive-dimensional family of endomorphisms that realize the spectra.

Note that the spectra is non-admissible if and only if the system of equations doesn't have a solution. This is equivalent to `I = (1)`. In this case we get `codim I = 'infinity'`, `degree gens I = [0]`. 


## Additional material:

* The values in `values.txt` were extracted from `raw-input.txt` using `extract-values.py`.

* The script `test-old-relations.py` verifies that these values satisfy the previously known *classical* relations.

### Other branches:

**Warning:** These branches were following the prevous convention where t,d are the spectrum of *dF - I*.

* The branch `via-h-algorithm` tries to perform the test by computing the *hidden relation* and evaluating it at `L`.

* The branch `undepurated-data` is an older version contains a larger data set in `raw-data.txt`.
