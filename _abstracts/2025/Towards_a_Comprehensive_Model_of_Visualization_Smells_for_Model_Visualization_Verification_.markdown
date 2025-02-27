---
title: "Towards a Comprehensive Model of Visualization Smells for Model Visualization Verification"
layout: page
author: "Andreas Waldvogel"
---

Modern avionics systems increasingly rely on domain-specific modeling (DSM) to manage growing complexity. Under the strict DO-330 standard for tool qualification, each development tool in the toolchain must be fully qualified for automatic use - this includes block-diagram visualizations of DSM models. Verifying by hand that rendered diagrams accurately reflect their underlying models is both labor-intensive and error-prone. To address this, we propose Veriviz, an automated solution that compares rendered block diagrams against a model database to ensure correct visualization.

Veriviz detects “visualization smells”, discrepancies between the intended design and the displayed diagram, e.g. overlapping blocks, unreadable text, or missing elements. The term “visualization smell”, inspired by “code smell”, does not necessarily imply a definite problem but signals the need for further investigation. These anomalies often arise from latent faults in the editor’s technology stack, including operating system peculiarities, graphics library issues, or subtle browser misconfigurations. Understanding how such faults lead to observable failures is central to our approach. We therefore present a meta-model that categorizes smell types and maps them to possible fault origins. For instance, an incorrectly sized block might be due to an erroneous bounding-box calculation, while invisible connectors could point to an improper color setting or a missing rendering step.

Our verification pipeline proceeds as follows. First, the DSM environment exports a final rendered image. Next, we apply image processing to detect blocks, connectors, and labels. Each detected element is matched to its corresponding reference object in the qualified model database, which serves as the “ground truth”. Deviations from these specifications are flagged as visualization smells and require further investigation.

At the heart of our approach is the visualization smell model, capturing both visible symptoms (failures) and their underlying causes (faults). By distinguishing between dormant and active faults, we explain why some rendering issues may remain hidden until they manifest visually. This explicit link between faults and failures supports systematic reporting: each flagged failure is accompanied by a hypothesis about the likely fault, aiding engineers in debugging and tool maintainers in addressing root causes.

We test our method on a variety of avionics block diagrams, including those with rotated text, intersecting shapes, and diverse object sizes. Veriviz can handle up to 1,000 diagram elements in a few minutes, making it suitable for iterative checks. We reused existing test cases, mapping them to various visualization smell types. Veriviz successfully detected deliberately introduced discrepancies, with only a few false positives, demonstrating its effectiveness in systematically identifying and classifying visualization smells.

In conclusion, Veriviz enables the qualified usage of graphical domain-specific modeling in safety-critical avionics through a visualization smell model. By eliminating the need for manual verification, this approach increases the efficiency of DSM in regulated environments.

