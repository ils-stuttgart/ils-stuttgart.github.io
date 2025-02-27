---
title: "Approach for a holistic and quantified Risk Assessment of Actuator Failures in X-by-Wire Vehicles"
layout: page
author: "Oliver Markus"
---

X-by-wire systems, namely brake-by-wire (BbW) and steer-by-wire (SbW), are relatively new concepts
in production vehicles. Although these technologies have been discussed in scientific publications for
many years, their application as production-ready products has only recently become feasible and
economically viable with the advent of Advanced Driver Assistance Systems (ADAS) and higher levels
of automation, among other technology drivers. The inherent need for higher safety requirements for
ADAS and higher levels of automation enables the implementation of BbW and SbW systems. These
in turn rely on redundancies in communication and power supply to meet the increased availability
requirements due to the removal of the driver as a fallback option. Today, safety concepts to meet
these requirements are predominantly developed within the respective actuator domains. Functional
safety concepts that exploit potential cross-domain synergies between BbW, SbW and drive systems
require a holistic development approach. The objective of the PhD thesis is to address this challenge.

One of the first steps in this holistic development approach is a quantifiable risk assessment of relevant
actuator failures of the addressed systems to derive consistent safety requirements, as domain-specific risk assessments are generally based on qualitative expert reasonings. It is shown that these
assessments, which follow the ISO 26262 standard for functional safety in automobiles, vary widely.
Therefore, a quantitative approach is presented to determine the exposure, severity and
controllability of an actuator failure, leading to the determination of an Automotive Safety Integrity
Level (ASIL). The standard defines a hazardous event, based on which a risk assessment is performed,
as the combination of a hazard caused by a malfunctioning behavior due to a failure and an
operational situation (OS). A simulation environment is set up to evaluate these hazardous events. In
the approach, the operational situation is described as a combination of a vehicle state, in the form of
a superposition of speed and lateral as well as longitudinal acceleration, and an environmental
context, which includes expected risk factors and characterizes the traffic situation under
investigation. Based on the available data, an exposure level from E1 to E4 is assigned to the OSs. The
hazard is described by determining the trajectory, that the vehicle takes due to the malfunctioning
behavior resulting from the failure under investigation. The evaluation of the trajectory within the
simulation environment provides the necessary information to derive the corresponding severity
classification for the hazardous event. To quantify the severity classification, an in-depth research of
accident statistics was carried out to determine the thresholds for S1 to S3. Following the reasoning
of ISO 26262, the controllability of a hazardous event can be formulated as the percentage of drivers
who are able to avoid harm in such events. The assessment includes the driver of the vehicle directly
affected by the malfunctioning behavior as well as other traffic participants involved in the hazardous
event. Human driving behavior in emergency situations such as hazardous events can be described by
stochastic models fitted to real world data. These models are used in the risk assessment approach to
classify the controllability from C1 to C3. Without the explicit assumption of the availability of the
unimpaired actuator domains, the driver of the directly affected vehicle has no control over the
outcome of the hazardous event. Therefore, only the involved traffic participants have an impact on
the controllability. The ASIL determination is illustrated with examples. An outlook is given in which
the explicit availability assumption is discussed by applying cross domain synergies that allow the
driver to contribute to the controllability.