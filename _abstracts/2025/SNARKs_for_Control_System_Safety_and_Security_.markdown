---
title: "SNARKs for Control System Safety and Security"
layout: page
author: "Johannes Reinhart"
---
Control Systems are employed in many areas for operating and automating critical systems.
Prominent examples are flight control in aircraft, electrical power grid control, power generation
plant control or control in automated industrial processes. In order to meet rising demands for
efficiency, autonomy and adaptability and due to their application to more complex and challenging
tasks, modern control systems’ complexity and interconnectivity increases. This results in new
attack surfaces for malicious actors and can also introduce new sources for non-malicious but
unintended system failures due to design errors or random faults in components. Yet, many of these
applications are safety critical, i.e. a malfunction or adversarial tampering can lead to loss of lives.

A promising method for ensuring safety and security in such systems is the application of Succinct
Non-Interactive Arguments of Knowledge (SNARKs). SNARKs allow to verify the output of a
computation by means of a short proof which will be invalid for computations corrupted due to a
malfunction and which cannot be forged by a malicious attacker. A digital control systems usually
consists of a control unit that uses sensor measurements to compute control outputs, which are sent
to actuators that manipulate the system accordingly. In this setting, SNARKs could be employed to
verify that the computation of the control unit has been carried out correctly and on the correct
inputs.

However, applying standard SNARKs in this setting is not trivial, as in order to ensure that the
correct inputs have been used would require the inputs to be sent to the verifying party. Second, the
control law is usually stateful, which with standard SNARKs would also require the entire state to
be sent to the verifying party. This is usually impractical due to bandwith limitations and real-time
requirements.

We present a new generalization of SNARKs that besides proving the correctness of the
computation also prove the authenticity of the input data and the consistency of the state between
iterative steps of a computation, without sending them to the verifiying party. Our focus is on
concrete practicality, so we abstain from arithmetizing hash functions or signatures in our SNARKs.
Rather, we modify the internals of an existing SNARK to extend its functionality. Additionally, we
present new optimizations to reduce proof size, prover time, and verification time in our setting.
With our construction, prover runtime improves significantly over the baseline by a factor of 89.
Verification time is 70 % less for computations on authenticated data and 33 % less for stateful
computations. To demonstrate relevance and practicality, we implement and benchmark our new
SNARKs in a sample real-world scenario with a quadcopter flight control system. We conclude that
with our modifications, the application of SNARKs to simple control systems with moderate timing
requirements is feasible.