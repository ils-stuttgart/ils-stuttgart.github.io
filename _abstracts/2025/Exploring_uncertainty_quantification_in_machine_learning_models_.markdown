---
title: "Exploring uncertainty quantification in machine learning models"
layout: page
author: "Henry Späth"
---
Through the increased data and computational power, the influence of machine
learning application rises and the call to bring machine learning in the aviation
does not stop. But bringing machine learning in a safety critical environment
creates new challenges for testing to ensure the safety as required by DO-178C.
Even through exhaustive testing based on formal methods or driven by the Operational Design Domain (ODD) it is not sufficient to cover and test all the
code. This is in direct conflict to the current procedure where the software
code can be fully tested and the behavior is traceable from the requirements to
the code itself. This is not possible due to the entanglement of the algorithm
and the data resulting in the final performance. As the final model cannot be
completely tested for each input and even in an almost perfect state the model
predictions do not have to be perfect all the time. Therefor, one cannot state
that a piece of code and a machine learning model will do exactly the same as
it cannot be proven.

The utilization of uncertainty quantification to enhance the model testing
seems like a good fit to deal with the problems. Uncertainty quantification
is a measurement of the certainty of the prediction.It can be divided in two
parts, the aleatoric uncertainty, referring to randomness within the data, and
the epistemic uncertainty, referring to missing knowledge. This information can
enhance the safety of ML applications during operation as uncertain predictions
can be filtered.

For the uncertainty quantification the majority current approaches utilize
Bayesian networks, ensembles or immerse into a confidence score based on out
of distribution detection. The key takeaway is that except for the out of distribution detection the other two approaches are directly based on the machine
learning prediction which cannot be fully tested.

During the literature review, 4 major points for uncertainties were identified.
First the uncertainty introduced during training based on model architecture
and the data. Secondly the data itself which can be evaluated for data uncertainty and out of distribution detection. Third the finalised model where
the weights and feature connections can be evaluated to determine the different
connections between features and predictions and to detect relevant key factors
and weight impacts. Fourth the testing to take the impact of testing into consideration based on methods like formal methods and increased coverage within
the tested data and out of distribution performance.

This talk presents a state of the art survey for uncertainty quantification
focusing on the detected key features. We explore different methods for uncertainty quantification of classification and regression models and discuss the
influence and applicability of those within safety critical applications like in
aviation.