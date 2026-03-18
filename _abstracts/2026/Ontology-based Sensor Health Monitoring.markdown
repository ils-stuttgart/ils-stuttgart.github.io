---
title: "Ontology-based Sensor Health Monitoring"
layout: page
author: "Colin Klein"
year: 2026
---

Predictive Maintenance (PM) methods are common nowadays in conjunction with the field of prognostics and health management. Both fields aid the efficient operations of aircraft and other mission-critical systems.  Adoption of these methods is, however, still hindered by bottlenecks such as uncertainty quantification, data harmonization, and data quality, as the literature mainly focuses on the development of methods based on select, cleaned datasets or synthetic data. To harmonize data and determine data quality, there are no currently known Sensor Health Monitoring (SHM) methods in the \gls{pm} domain that tackle these issues systemically.

This work presents a method to monitor the health of sensors based on structured system metadata ontologies. The proposed approach uses ontologies to store static model-based simulation information for the sensor health monitoring in the shape of mathematical equations, and redundant sensor subsystems. Moreover, other aircraft system information will be enriched by converting data from tabular and hierarchical formats into ontologies to increase their expressiveness. The developed ontology-based sensor health monitoring algorithm is validated on experimental data from a Falcon 2000LX aircraft and shows detection of various faults in the aircraft's experimental sensors. Based on these results, the framework integrates metadata from various sources and can be scaled for any asset producing timeseries data and having structured metadata information available. Contrary to most data-driven methods, this approach has the advantage of being deterministic, allowing method interpretation of results for predictive maintenance analysis and uncertainty quantification. Additionally, the ontology provides system level overview and allows capturing expert knowledge expressively.

