---
title: "Scalable Verification of Learning-enabled Systems via Robust Set Representation and Propagation"
layout: page
author: "Yousif M. Elsheikh"
year: 2026
---

Neural networks (NNs) have made their way into applications in various domains such as automotive,
space systems, robotics and security. This is mainly due to their ability of universal approximation by
extracting patterns from data. Their internal parameters are learned using backpropagation, it is however
nontrivial to theorize about the data-parameter-prediction mapping in an exact sense. One pronounced
property is adversarial sensitivity, which measures how the prediction changes when the input features
are perturbed in directions that maximize the loss. This comprises a major problem for safety-critical
cyber-physical systems (CPS), where a misclassification due to adversarial noise can lead to catastrophic
failures. To this end, research was focused on two classes of testing: Adversarial testing and formal
verification.
Adversarial testing methods focus on worst-case perturbation around a given known input sample, either
by estimating or obtaining the input-loss gradient. Therefore, it is a quantitative testing method that
does not give any guarantees, only a general and usually weak statement that a model is more or less
robust. On the other hand, formal verification methods provide guarantees that are usually around nominal
inputs and are based on completeness and soundness. Because these methods are rigorous and often
rely on exact solving, they scale poorly with input dimensions and network architecture. Both methods
typically yield local statements around nominal inputs and allow for only loose robustness claims that
are often based on sparse input samples.
This work aims to tackle this problem on two fronts, first through getting rid of the sample-based testing
by obtaining a robust reduced-dimension representation of the input space and clustering the input
in this lower space. Second, by representing the reduced-dimension, semantically-sound representation
using efficient polytope representations called zonotopes. Zonotopes are set representations that are efficient
under affine linear transformations, such as the layer matrix-vector multiplication and addition
operation (y = Wx + b). They are defined as the minkowski sum of generators. Those zonotopes are
then propagated to the full input space through a pre-trained piecewise-linear decoder with sound overapproximation.
Movement inside the high-dimensional zonotopes in the input space provide meaningful
changes in features. This will represent a test case to further be propagated through the software under
test (SUT). To represent the input space in a representative lower dimension, this work shall make use
of the conditional variational autoencoder (CVAE) for their generative abilities, conditional control and
potential interpretability. To further bound the latent code-input space mapping, we propose capping the
decoder’s global lipschitz constant. This measure will ensure a “smooth” decoder that does not stretch
the latent code too much.
Concretely, this work will first investigate the representation robustness of the latent code. Afterwards,
it will investigate the meaningfulness and scalability effect under this setting provided by efficient set
representations and their propagation as well as sound over-approximation. First through a piecewise
linear decoder and then a piecewise linear neural network (SUT).