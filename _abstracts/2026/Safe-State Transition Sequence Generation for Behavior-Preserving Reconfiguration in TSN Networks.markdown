---
title: "Safe-State Transition Sequence Generation for Behavior-Preserving Reconfiguration in TSN Networks"
layout: page
author: "Mariann Homolya"
year: 2026
---

Modern avionics platforms are becoming increasingly complex due to embedded and modular systems, while there is a demand for improved energy efficiency, reduced engineering workload, and shorter development cycles.
These demands require deterministic communication with guaranteed latency, bandwidth and traffic isolation
requirements to ensure predictable system behavior. Time-Sensitive Networking (TSN) provides mechanisms to
support these requirements, enable scheduled reconfiguration
Avionics systems heavily rely on static configurations, due to certification constraints and the operational life
of the aircraft. However, the increasing functional complexity of modern platforms and evolving manufacturer requirements
demonstrate the need for controlled reconfiguration throughout the operational lifecycle. These updates
are typically performed on ground, due to safety, security, and certification requirements. In the future, however,
in-mission reconfiguration could enable recovery from failures and degraded modes.
Even for static reconfiguration, verifying the correctness involves significant engineering effort. In case of
dynamic reconfiguration, the transient state between the running configuration C0 and target configuration CN
can lead to the temporary violation of service and communication guarantees, such as latency bounds and traffic
isolation. For example, when alternative routes, or redundant resources are available, it should be possible to
mitigate connection failures and maintain system functionality.

This talk addresses the problem of generating transitional behavior-preserving configuration sequences between
the initial TSN configuration C0 and target configuration CN, initially focusing on a single TSN switch. The
objective is to ensure that the intermediate state remain safe, by creating a sequence of transient configurations.
In these intermediate states, the transient safety is defined by end-to-end reachability, keeping traffic class isolation,
minimal burst of latency, and minimum service guarantees of critical flows In safety-critical environments,
even short violations of transmission are unacceptable making a transition sequence a key element of reaching a
certifiable reconfiguration procedure.
To address this, this talk introduces a safe-state-based reconfiguration model for TSN with Credit-Based Shaper
(CBS). A behavioral abstraction is derived, which enables an atomic configuration sequence to be formulated to
transform C0 into CN. Each candidate transient configuration is checked against the chosen constraints . This process
contains a sequence of transitional configurations that presence the transmission properties to avoid unwanted
transient behavior and loss of service.
The proposed method is evaluated on a representative switch configuration, with the focus on the number of
transient steps, temporary latency increase, loss of packets, and the overall duration of the reconfiguration.

In summary this paper aims for the following contributions:
• formal safe-state based model for TSN reconfiguration,
• a basic definition of transient safety properties,
• a method to generate safe transition sequences with incremental update
Future work to extend for multi-switch, and integrate multi shaper, general reconfiguration sequence generation
with weighted traffic parameter bounding.