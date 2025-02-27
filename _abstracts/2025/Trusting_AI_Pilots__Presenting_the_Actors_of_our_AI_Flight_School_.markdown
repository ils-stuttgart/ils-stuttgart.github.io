---
title: "Trusting AI Pilots? — Presenting the Actors of our AI Flight School"
layout: page
author: "Christoph Regli"
---
The integration of artificial intelligence into aviation presents not just a technical challenge but a
fundamental question of trust. Can AI pilots ever be as reliable — and as trusted — as their human
counterparts? Although AI has revolutionized many aspects of our daily lives, aviation certification
and licencing standards are rooted in deterministic logic and human decision-making. They are not
fully equipped to handle AI’s idiosyncrasies, such as its black-box nature, the complexity of deep
learning models, or the potential for non-deterministic behaviour.

Against this backdrop, this research takes an unconventional, anthropomorphic approach aiming
at leveraging trust: What if AI pilots are trained and evaluated using the same rigorous procedures
applied to human aviators? Instead of relying purely on the known software assurance techniques, the
proposition is to additionally subject AI to structured, human-like training and checking. The goal is
not just to refine AI’s flying capabilities but to investigate whether such an approach can foster greater
trust in AI pilots, while also identifying potential performance flaws in a controlled and systematic
manner.

To put the approach to the evaluation, a research setup based on a commercially available flight
simulator has been developed, providing a vastly realistic and adaptable testbed. A key requirement
was the creation of structured training scenarios — ranging from basic manoeuvres to complex emergency procedures — and encoding them in a machine-readable formal language, ensuring consistency,
variability, and scalability.

One fundamental assumption was that AI systems, compared to human pilot aspirants, require
significantly more training iterations to achieve competency. Given this, automation in flight training
and checking became essential. This led to the development of two central actors in the AI flight
school: The electronic Flight Instructor (eFI) and its counterpart, the electronic Flight Examiner
(eFE).

The eFI acts as a digital flight instructor, demonstrating training scenarios encoded in the formal
language. The AI agent, present or future, can learn by observing and imitating the eFI’s actions.
This provides a structured and repeatable training process, allowing AI pilots to acquire and refine
their flying skills progressively.

After completing training, the AI pilot is put to the test under the supervision of the eFE. Functioning as an automated examiner, the eFE continuously monitors pilot performance, assesses adherence to
procedures, and provides multi-dimensional real-time feedback to the trainee. The feedback includes
multiple assessment levels, from flight safety to flight stability, adherence to flight tolerances, the
appropriateness of the control inputs, the degree to which the mission objectives have been achieved,
but also flight economic considerations. The eFE records both the control guidance and the resulting
flight attitude and flight vector and continuously analyzes these parameters using the retrospective
rolling mean and the rolling standard deviation from the target values.

The presentation will outline the core aspects of the research approach, including the rationale
behind adopting an anthropomorphic methodology, the delimitations of the study, and the structure
of the formal language used to define training scenarios. A special spotlight will be put on the eFE, the
latest addition to the AI training ecosystem, covering the criteria used to assess flight performance,
the parameters under evaluation in real time, and the mechanisms employed to provide meaningful
feedback to the AI’s deep reinforcement learning system.

Beyond the technical implementation, the research raises broader questions, still subject to being
answered: Could this methodology one day pave the way for AI pilots to undergo certification —
or rather: licencing — comparable to human pilots? If AI can meet the same rigorous standards as
human aviators, will that be enough to gain public trust?

