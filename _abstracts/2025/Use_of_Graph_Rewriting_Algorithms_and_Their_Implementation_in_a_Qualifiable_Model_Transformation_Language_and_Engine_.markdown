---
title: "Use of Graph Rewriting Algorithms and Their Implementation in a Qualifiable Model Transformation Language and Engine"
layout: page
author: "Constantin Frey"
---
Model transformations are used in the development process for Integrated Modular Avionics
(IMA) to make the process more efficient by automation. A qualifiable model transformation
language and engine TRA is currently developed for use in a safety-critical development process. Artifacts generated in TRA, such as IMA configurations, do not have to be verified. TRA
is a graph-based model transformation language and is based on the formal methods of graph
rewritings. A model transformation consists of transformation rules for executing actions on
the models. The actions of a model transformation rule include searching for patterns in the
model, deleting elements and adding elements to the model and setting values. For this, a
model transformation rule is composed of the algorithms of graph rewritings. The presentation introduces these algorithms and demonstrates the qualifiable implementation.

A model transformation rule in TRA uses different types of search algorithms with integrated
filters. The idea of these search algorithms is to first build an input graph based on a pattern
graph. The pattern graph is specified in the transformation model. The transformation model
is a domain-specific model in the TRA model transformation language MetaTRA. Model queries in the essential object query language build the input graph from the models in the model
database and store the input graph in the transformation rule. In the next step, the transformation rule applies a search pattern algorithm to the input graph. TRA uses the Ullmann algorithm to solve the subgraph isomorphism problem. The search pattern algorithm searches
for all matches of the pattern graph in the input graph. The algorithm is qualifiable implemented. The search algorithms integrate additional filter algorithms. Filters reduce the number of solutions of the search algorithms. TRA filters matched patterns for input patterns in a
model transformation rule, as well as for guard conditions.

The presentation demonstrates the implementation of the graph rewriting algorithms for a
model transformation rule in TRA using the “Add Partition” model transformation. The “Add
Partition” model transformation is a step from the generation of IMA configurations from platform architecture models. The model transformation creates ARINC 653 partitions in the plat-
form architecture models and allocate them to IMA devices. In the presentation the implementation is evaluated in terms of performance. Further aspects such as a MISRA-C compliant
implementation and the analysis with a code analysis tool are considered. The presentation
compares the implemented algorithms with the graph rewriting algorithms from state-of-the
art graph-based model transformation languages.

The tool user should be supported in the tool qualification of the model transformations in
TRA. For this, a tool qualification agent generates the tool qualification kit model-based. The
presentation shows the generated tool requirements for a model transformation rule. The
model transformation rule tool requirements must contain the specification of the implemented graph rewriting algorithms.