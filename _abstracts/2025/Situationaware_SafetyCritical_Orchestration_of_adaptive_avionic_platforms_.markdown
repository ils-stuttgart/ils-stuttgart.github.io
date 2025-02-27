---
title: "Situation-aware Safety-Critical Orchestration of adaptive avionic platforms"
layout: page
author: "Raphael Rohrmüller"
---
Safety-critical applications in the aerospace domain require a high degree of reliability, security, and
fault tolerance to ensure system integrity and prevent catastrophic failures. Traditionally, Integrated
Modular Avionic platforms and ARINC 653 partitioning have been used to realize these characteristics.
However, more complex systems and applications require solutions that reduce the configuration
level, are flexible, scalable, and cost effective. Virtualization technology has proven to be a promising
approach to address these challenges. However, there is currently no way for adaptive avionics
platforms to respond autonomously to various system failures. A situation-based self-healing process
does not exist for adaptive avionics platforms. To achieve this, a deterministic orchestration of virtual
machines is required. This raises the question of how an autonomous, deterministic orchestration
behavior can be generated for virtualized adaptive avionics platforms.

An algorithm is required that can perform situation-dependent decision-making processes within the
avionics platform without violating the system's integrity.

To address this, we propose Finite state machines for virtualization this purpose. To define these finite
states, they are to be derived from the model-based database of the Open Avionic Architecture Model
(OAAM). Formalities and rules are created to derive a deterministic virtualization process. Each
virtualization architecture corresponds to a state in a state set. A transition from one state to another
is defined by a set of so-called “input alphabet” and an “output alphabet”. The combination of input
and output alphabets corresponds to the state transition function. The new state of the virtualization
architecture is created from this. The challenge is to be able to produce an automatic derivation of the
state transition functions, which can create a logical and meaningful reaction to changes in the
virtualization architecture caused by failures. The Open Avionics Architecture (OAAM) model and
topology discovery are used for this purpose. In the pre-flight phase, all virtualization failure modes
are first analyzed in order to obtain the states and state combinations of the virtualization architecture.

The input alphabet is created from information in the OAAM model. These are conditions that can lead
to a new system state. Conditions are a combination of the DAL level of the system function,
input/outputs of the task blocks, type of partition, possible degradations, and the available resources
within the processing unit. The output alphabet defines with possible actions of the virtual machine to
move from one state to another. The creation, destruction, movement, and degradation of the
partitions are used here as possible state transformations. The various input parameters are linked to
the output parameters using rules and patterns. With the help of the data contained in the OAAM
(input alphabet) and a formalized output alphabet, all states in the virtualization process can be
derived and sent to the virtualization instance in the form of a table before operation. A combination
of VM Observer and VM Handler can thus compare the state of the virtualization with the static state
table and react according to the formalized output alphabet. In this way, deterministic behavior can
be established for unforeseen failures in operations.