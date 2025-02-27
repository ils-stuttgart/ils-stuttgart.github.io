---
title: "Automated Task Allocation Enabling Virtual Satellite Constellation for VLEO: A Mixed Integer Linear Programming Approach"
layout: page
author: "Ayca Kula"
---
This paper proposes an organization method for distributed self-adaptive avionics
architecture for VLEO (Very Low Earth Orbit) virtual satellite constellations, aiming to
develop a self-organizing computing platform that optimally executes functions and
makes autonomous decisions based on availability, lifespan and spatial constraints.
By enabling dynamic onboard decision-making, this approach eases the operation
and enhances the utilization satellites.

The primary challenge is dynamically optimizing task assignments for satellites with
heterogenous trajectories and capabilities, enabling them to form adaptive virtual
constellations that collaboratively meet specific mission requirements while operating
in orbit. This involves determining the optimal allocation of tasks to satellites while
considering constraints such as battery limitations, visibility, communication
bandwidth and operational rules to prevent resource conflicts, which all change
dynamically over time.

As satellite deployments surge and the risk of LEO (Low Earth Orbit) congestion
grows, the ATLAS (Advancing Technologies of Very Low-Altitude Satellites) project
aims to explore the unique opportunities and tackle the challenges associated with
VLEO. VLEO missions offer significant advantages, including improved measurement
accuracy for geophysical science, higher spatial resolutions for Earth observation,
shortened communication response times and reduced transmission power
requirements. However, these benefits come with operational challenges that require
innovative solutions to enhance the efficiency of satellite constellations. Most current
missions rely heavily on ground station operators, demanding significant human effort
and missions are coupled to specific satellites. Therefore, a key objective of our
research is to decouple satellites from human intervention and manual mission
planning, enhancing autonomy and overall resource utilization.

This paper suggests a task allocation approach designed for virtual constellations,
where satellites move dynamically and are not aligned, operate in Very Low Earth
Orbit (VLEO), interact with ground infrastructure. Additionally, it highlights the specific
constraints of VLEO operations. A Mixed Integer Linear Programming (MILP)
approach has been developed to ensure plannable solving times and optimality gap
information.

The MILP approach is tested for its ability to handle increasing numbers of satellites,
tasks and constraints, ensuring its applicability to large-scale constellations. The
MILP model's computational efficiency is assessed by analysing the time required to
solve problems of varying sizes and complexities. The method has been evaluated
based on its ability to achieve high mission efficiency while satisfying all constraints
and requirements.

A game-theoretic approach is also formulated for the problem and compared with the
MILP approach. The comparison evaluates the number of solutions generated,
differences in formulation, computational complexity and suitability for large-scale
problems or dynamic environments.

Our benchmark mission involves a constellation of m satellites operating in VLEO.
These satellites collaborate to achieve Earth observation objectives, specifically
capturing images of various locations on Earth. Each image corresponds to a task
that must be completed by the satellites. The primary goal is to determine the optimal
assignment of satellites to tasks based on a defined performance criterion.

Different scenarios were examined on the example mission to evaluate the
performance of the proposed approach. These scenarios included varying the
number of satellites and tasks to assess scalability, incrementally adding key
constraints to analyse system robustness and incorporating simplified orbital
dynamics to accurately model constraints. Additionally, the computational complexity
related to the choice of decision variables were also analysed.

Preliminary results show that the proposed distributed self-adaptive architecture
works for the benchmark missions. The computational performance remains efficient,
demonstrating scalability as the number of satellites and tasks increases. Initial
benchmarks reveal that carefully defining decision variables significantly reduces
computational complexity, leading to faster solving times. These findings confirm the
potential of our approach to enhance the automation, efficiency and robustness of
virtual satellite constellations in VLEO. Our approach has the potential to be
extended beyond Earth observation missions, offering applications in other multi-agent systems such as UAVs and robotic platforms. In future we would like to extend
it to space to earth cooperative systems for areas like disaster response and
resource management.

