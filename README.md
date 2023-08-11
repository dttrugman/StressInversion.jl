# StressInversion.jl
A set of Julia scripts and functions for crustal stress inversions based on earthquake focal mechanism data.

Much of the functionality builds on the great open source work by E. Beaucé (https://github.com/ebeauce/ILSI) and V. Vavryčuk (https://www.ig.cas.cz/en/stress-inverse/), but is optimized for large datasets and space-time binning within the inversion. The algorithm uses the iterative approach of Vavryčuk to isolate the most unstable fault plane and estimate the stress field.

---

The (unregistered) package can be installed using the Julia Pkg manager:

` pkg> add https://github.com/dttrugman/StressInversion.jl`

[Note, to download a local copy of this repository, try `git clone https://github.com/dttrugman/StressInversion.jl`.]

Once installed, please do run the test set that checks your installation by running a suite of test problems:

` pkg> test StressInversion`

**Note:** The StressInversion software was finalized using Julia v1.8. It is recommended to use at least v1.7 or later; older versions may work but there can be compatibility issues with the packages StressInversion depends on.

---

The example/ directory has an example run script that users could modify for their own applications. The idea would be to (1) modify the function near the top of the program to read in your dataset, and (2) change any of the space-time binning and run parameters at the top of the script to better suite your problem. The current example uses the large, open dataset of focal mechanism from Uchide (2022): https://doi.org/10.1029/2022JB024036.

The code also has the capability for uncertainty analysis using bootstrap resampling. An example use case is currently under construction and will appear in the example/ directory once complete. 



