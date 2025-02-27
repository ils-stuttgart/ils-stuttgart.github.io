---
title: Automatic Traffic Shaper Configuration and Multi-Shaper
author: Mariann Homolya
layout: page
---


Optimization on Time-Sensitive Networking in Avionic Systems Industries, especially the aircraft industry heavily rely on real-time communication and for that reason highly specific network technologies were developed
to fulfil those requirements. This specialization reduces the capability to use commercial off-the-shelf (COTS) component, that leads to higher costs. Thus
Time-Sensitive Networking (TSN) can provide deterministic, low-latency, and high reliability transmission. With these properties it can act as the central
network in real-time systems - like in Industrial Automation, Automotive, and Avionics Systems - creating a backbone to connect different communication
protocols and allow a high control over data traffic with the usage of Traffic
Shapers. TSN is still a growing standard that aim to utilize bandwidth while
still providing reliable communication with redundancy, precise time synchronization and other strategies to have accurate and timely data transmission.
Utilizing TSN increases the complexity of traffic management and the aim for
automatized configuration creates new challenges such as the defining Traffic
Shaper parameters and creating Multi-Shaper configurations.

Traffic Shapers are a key feature of TSN as the utilization provides better
performance and higher reliably. However, the complexity of the configuration
and parameter settings of the Traffic Shaper depends on multiple factors and
varies accordingly from straightforward to highly complex. This also means
that it depends highly on the network definition, requirements, the amount of
nodes, amongst others and the used Traffic Shaper(s) themselves. Manual configuration is time consuming and does not support flexible systems, changing
network configurations, and high level automatization. The configuration parameters being highly dependent on the network create major automatization
and optimization opportunity.

All of the above raises the question on how to select and combine the different
Traffic Shapers for the best result. And how to automate generation of Traffic
Shaper parameters for automatic (re)configuration on self adaptive aviation
systems.

The general approach for Traffic Shaper implementation in low complexity
systems can be solved with using pre-configured TSN switches and manual configuration. However, with more complex requirements configuring TSN is done
simulating the network behaviour with accurate traffic volume monitoring with
management tools. These management tools allow the parameter configuration
and manual optimization based on the monitored performance of the simulated
network.

The aim of this talk is to explore methods for automatic optimization of
traffic shaping parameters based on Integer Linear Programming. This shall
provide comparable results of Traffic Shaper parameter configurations and also
for the performance differences of Multi-Shaper combinations with what the
network configuration fulfils the requirements.