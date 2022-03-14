[Variability testing in the wild: the Drupal case study](https://link.springer.com/article/10.1007/s10270-015-0459-z)

Every module adds a feature to the framework.
Feature is added into a feature model.
Some Features have dependencies and are marked as such.

Response to RQ1. The results show that non-functional
attributes are effective drivers to accelerate the detection
of faults, and thus, the response is “Yes, non-functional
attributes are helpful to accelerate the detection of faults
in VISs ”.

Response to RQ2. The prioritization driven by non-functional
attributes led to faster fault detection than functional criteria
in all cases with the only exception of the criterion VC&CC,
which ranked second for the CASA test suite. Therefore, the
response derived from our study is “Non-functional attributes
are more effective than functional data at accelerating the
detection of faults in most of the cases”.

> Test using non-functional attributes?

Approach:
1. Identify features -> Done with list of properties
2. Define constraints -> List of scenarios?

Test case selection: [4,6,16,21,32,37,39,40,42,48,55,66]

4. [Grammar-based test generation for software product line feature models]
6. [Multi-objective test suite optimization for incremental product family testing]
16. [Abstract test case generation for behavioural testing of software product lines]
21. [Evolutionary search-based test generation for software product line feature models]
32. [Multi-objective test generation for software product lines]
55. [On the value of user preferences in search-based software engineering: A case study in software product lines]
66. [Minimizing test suites in software product lines using weight-based genetic algorithms. In: The Genetic and Evolutionary Computation Conference]

Test case prioritization: [2,6,15,20,22,31,35,45,54,61,67]

Combinatorial testing: [2,22,31,32,35,37,39,40,42,48,54,61,66,67]

2. Similarity-based prioritization in software product-line testing
22. Evolutionary algorithm for prioritized pairwise test data generation
31. Bypassing the combinatorial explosion: using similarity to generate and prioritize t-wise test configurations for software product lines
32. Multi-objective test generation for software product lines
48. Automated incremental pairwise testing of software product lines
61. Reducing field failures in system configurable software: cost-based prioritization

[Similarity-based prioritization in software product-line testing](https://dl.acm.org/doi/pdf/10.1145/2648511.2648532)

Marking properties as mandator, optional and alternatives

Order by similarity?
    1. OneAgent properties are opposite to ActiveGate features
    2. Select oneagent porperty to test, then activegate property then oneagent, etc.
    3. Test one property or combination?
       * Combination if property has no dependency? Or maybe accumulate the end states?
       * Define valid configurations? Maybe not viable -> Define invalid configurations

AND, OR, and ALTERNATIVE groups

For larger SPLs, the input is a set of configurations created from a sampling algorithm, given by a domain expert, or the productively used configurations. 
The output of the algorithm is a prioritized list of configurations


My notes:

Include setup and teardown scripts.
Create a cluster snapshot.
If teardown cannot create a clean cluster, i.e., reset to snapshot, it fails -> failing the test case.

- global/setup.sh
- global/teardown.sh
- test-1/setup.sh
- test-1/test.sh
- test-1/teardown.sh
- params.yaml
- pipeline.yaml

Kuttl tests as part of test.sh
Kuttl has (weird) teardown built-in
