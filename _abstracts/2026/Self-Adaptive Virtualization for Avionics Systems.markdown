---
title: "Self-Adaptive Virtualization for Avionics Systems"
layout: page
author: "Samuel Queiroz"
year: 2026
---

Virtualization technologies can bring numerous advantages for avionics systems. First, it can run
multiple applications with different requirements on one single computer, allowing a higher balance on
resource consumption and a reduction in the amount of hardware used to run different applications.
Second, it enables the possibility of running applications with different criticalities on a single hardware
unit (mixed-criticality systems), optimizing the usage of available resources and enabling and centralizing
maintenance and monitoring of such systems. While we move towards self-adaptive platforms,
virtualization plays a central role on development and deployment, providing an environment where
tasks and resources can be dynamically allocated according to the platform needs.
Despite the robust advantages that virtualization brings into avionics systems, it also introduces
complex challenges. In the mixed-criticality systems domain, there are significant challenges towards
redundancy strategies. For example, if failures occurs in a hardware that runs in parallel DAL-A, DALB
and DAL-C applications, multiple systems would fail at once. In the classic approach, the failure
would only result in the loss of one system, therefore the redundancy is more straightforward. In
mixed-criticality systems, a single failure could result in the loss of multiple systems at the same time.
When moving avionics systems towards mixed-criticality approaches, the execution of such systems
become far more prone to dynamic constraints and failures, making the current static configuration
approach not possible.
Looking into the problems raised, an approach that has been demonstrably promising in addressing
similar issues is the self-adaptive systems, where the systems are automatically configured and dynamically
reconfigured during its execution, the same principle used in Plug and Fly Avionics (PAFA). The
approach presented here is the Self-Adaptive Virtualization, where virtual machines are automatically
configured based on the platform requirements, and then reconfigured to respond ongoing hardware
failures. This can be done by having multiple computers running the same configuration of virtual
machines, and then whenever failures occurs in the main computer, the currently operating computer
changes immediately, maintaining consistency and allowing the tasks to continue being executed in
another domain.
In order to achieve a viable redundancy for mixed-criticality systems, there are a number of strategies
that can be implemented:
• Synchronized systems: First, in all hardware instances, the very same configuration is applied,
and then executed in a synchronized manner. This way when switching computers during
failures, the execution would remain precisely consistent. This approach, however, its challenging
regarding the synchronization: maintaining a good consistency across multiple computers with
their virtual machines is something complex to achieve.
• Periodic migration of virtual machines: In this approach, an initial configuration would
be applied to all computers, and then, periodically the main computer would migrate their
virtual machines to the other computers. And then, when a failure occurs, another computer
can continue the operation. The challenge here is the following: if the failure occurs in between
migration periods, important data is lost. This way the systems are not well synchronized.
• Virtualized RAID storage: This technique is when the data is written to multiple disks at
once. This way, all computers would be synchronized with the same storage at execution time.
The problem with this approach is that it can cause delays on the applications execution.
In this doctoral seminar, a detailed survey on each approach will be presented, with its pros, cons,
and problems mitigation, and also its implications. A selection of which strategy can be better applied
to the avionics context will also be discussed in detail.