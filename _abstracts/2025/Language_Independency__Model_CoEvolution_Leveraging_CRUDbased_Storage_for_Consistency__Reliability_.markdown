---
title: "Language Independency & Model Co-Evolution: Leveraging CRUD-based Storage for Consistency & Reliability"
layout: page
author: "Vanessa Tietz"
---

Avionics systems are becoming more and more complex due to the demand of additional functionality
with very high safety and reliability needs, as well as the emergence of novel digital technologies. This
leads to an almost unmanageable effort required to develop avionics systems, which are characterized
by their numerous parameters and relationships. Therefore, conventional development methods are
on the edge of economic feasibility, leading to a stronger reliance on new development methodologies
such as model-based systems engineering (MBSE). MBSE enables the structured representation of
complex systems using domain-specific modeling languages (DSMLs), which serve as blueprints for
user models—digital representations of real-world systems. DSMLs map a respective domain with its
specific properties and allow to keep the language of that domain.

One major challenge is the vast number of available language workbenches for DSMLs, each differing
in design, features, terminology, and application areas. This makes it difficult for developers to
understand overarching principles and design alternatives. To address this issue, we have developed
language-independent commands for model interaction based on commonly used modeling concepts.
A “concept” represents a specific modeling aspect with a defined meaning—for example, the concept
M2CLASS refers to a typical class element that serves as a blueprint for instantiating objects at the M1
level. These concepts can be used independently of the meta-modeling language or workbench,
offering greater flexibility for developers.

Moreover, these concepts can be utilized as a novel method for text-based model persistence. Each
model element is uniquely defined through a sequence of creation commands that establish the model
structure and its associated information, such as class names or attribute assignments, which are
processed by our model interaction language.

Managing DSML changes over time remains a major challenge. Modifying DSMLs can lead to
incompatibilities, potentially rendering "outdated" user models inoperable, loosing data or
unintentional modification, especially in avionics development, where multiple stakeholders
collaborate. To maintain a consistent and reliable development process, these incompatibilities must
be addressed systematically. Our “concept” based persistency could be utilized for the handling of
DSML changes by simply comparing the persistent text-based model storage. The strongly defined
structure enables the derivation of a closed set of modification types. To manage those changes, they
can be categorized into the following three types:

1. Non-breaking changes, which do not affect existing user models.
2. Breaking-resolvable changes, which impact user models but can be managed automatically.
3. Breaking-nonresolvable changes, which require manual intervention to update the user
   model.

This talk will present the motivation behind our concept-based modeling approach and provide
insights into its current development stage with a focus on the model changes.