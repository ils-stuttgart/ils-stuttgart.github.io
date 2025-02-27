---
title: "Neural Networks Verification using Formal Methods"
layout: page
author: "Yassine Akhiat"
---
Over the past few years, Neural Networks (NNs) have been increasingly applied to real-world
applications, achieving successful performance. NNs have been applied to domains such as
image recognition, speech recognition, and natural language processing. The availability of
large amounts of data has enabled deep learning to achieve near-human accuracy or even
surpass it for a diverse set of tasks in many application domains. Similar to traditional software,
NNs sometimes exhibit erroneous behaviors, which can lead to severe outcomes, especially in
safety-critical applications such as aviation, healthcare, and autonomous driving. Therefore,
ensuring NN's robustness, safety, and correctness before their deployment in such applications
becomes essential.

Formal verification methods offer strong, mathematically grounded guarantees that the
behavior of a system, described using a formal model, satisfies a given property. However, their
application to machine learning models, especially NNs, remains an open challenge. While
beneficial in various tasks, NNs' layered architecture, non-linear activations, and the
exponential number of potential paths through a network render the verification problem very
hard. Several approaches have been proposed to solve this problem, including Satisfiability
Modulo Theories (SMT) solvers, Mixed Integer Linear Programming (MILP), and abstract
interpretation. The verification process involves checking robustness against adversarial
perturbations, ensuring compliance with system constraints, and validating input-output
relationships through provable guarantees.

Despite the significant progress in this area of NN verification, different challenges persist. One
challenge is scaling formal verification methods to large and complex models, as existing
methods often suffer from scalability issues due to the combinatorial explosion of the state
space as well as the non-linearity of activation functions. Another challenge is developing novel
training procedures that produce high-assurance models amenable to formal verification, as
current training methods often prioritize performance over safety and robustness.
This talk aims to highlight the potential of formal verification in improving the safety and
reliability of neural networks and state-of-the-art methods while identifying key areas for future
exploration and practical applications.

