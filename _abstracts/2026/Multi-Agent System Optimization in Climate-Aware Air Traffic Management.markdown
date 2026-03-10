---
title: "Multi-Agent System Optimization in Climate-Aware Air Traffic Management"
layout: page
author: "Recep Ayyildiz"
year: 2026
---

Contrails are formed by aircraft exhaust at high altitudes and, under certain atmospheric conditions, can persist and trap longwave radiation, contributing significantly to aviation-induced climate forcing. A promising mitigation strategy consists of rerouting aircraft to avoid regions with high contrail formation probability. However, modifying the trajectory of a single aircraft affects not only the operating airline but also multiple interconnected stakeholders within the air traffic management (ATM) system, including airports, air traffic controllers (ATC), and crew scheduling operations. When applied at scale, such rerouting decisions result in a complex multi-objective and multi-stakeholder optimization problem.

Multi-agent systems (MAS) provide a natural modeling framework for such environments. In MAS, individual stakeholders are represented as autonomous agents interacting within a shared environment. Each agent pursues its own objective while being influenced by the actions of others. This paradigm enables the decomposition of large-scale decision problems into decentralized components, increasing flexibility and scalability. However, MAS introduce additional challenges, particularly in terms of coordination, stability, and conflict resolution among agents with potentially competing goals.

Classical approaches to multi-agent optimization often rely on game-theoretic solution concepts such as Nash equilibria. While these methods provide structured equilibrium notions, they typically assume static environments and fully specified models. In contrast, real-world air traffic systems are dynamic, uncertain, and partially observable, making model-based optimization increasingly difficult.

Recent advances in reinforcement learning (RL) offer a framework for sequential decision-making under uncertainty. Extending this paradigm, multi-agent reinforcement learning (MARL) enables multiple agents to learn policies through interaction while accounting for interdependencies in states, actions, and rewards. However, in decentralized multi-agent environments, learning induces non-stationarity, as each agent’s policy updates alter the effective environment experienced by others. This non-stationarity undermines classical convergence guarantees and complicates safety assurance.

These challenges motivate the investigation of reinforcement learning algorithms that can guarantee stable, convergent, and safe behavior in non-stationary multi-agent systems. Climate-aware air traffic management serves as a demanding application domain for analyzing and evaluating such theoretically grounded approaches.
