# Test the hidden relation for quadratic endomorphisms with an invariant line

Consider a quadratic endomorphism *F* of the complex projective plane having isolated fixed points only. The **spectra of fixed points** is the collection of the spectra of the derivative of *F* at each of the fixed points. These numbers satisfy certain algebraic relations coming from the holomorphic Lefschetz fixed point theorems, and from the Camacho-Sad and the Baum-Bott index theorems for foliations. Other relations on spectra are known to exist but have never been described.

This repository deals with quadratic endomorphisms having an invariant line. In this case there is one more *hidden relation*.

The object of this repository is to test if a collection of numbers `[t_0, t_1, t_2, d_0, d_1, d_2, L]` satisfy the hidden relation.

## Main components:

* The code to perform the test is contained in `m2-code/hidden-source.m2`.

* The file `data/values.txt` contains a list of values that need to be tested.

* The script `test-all-values.py` calls Macaulay2 to test each line of `data/values.txt`

## Supplementary material:

### `results/`

* `results.txt`: This file was created by hand to list the instances where the hidden relation was satisfied, the instances where it wasn't and the cases where `test-all-values.py` signaled an error.

### `data/raw-input/`

* The values in `values.txt` were extracted from `raw-input.txt` using `extract-values.py`.

* The script `test-old-relations.py` verifies that these values satisfy the previously known *classical* relations.
