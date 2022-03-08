# cardano-chain-analytics-dataset

An open-source set of DBSync queries to create an analytics-friendly dataset of Cardano on-chain data

This project is the result of a funded catalyt proposal here: https://cardano.ideascale.com/a/dtd/Dataset-On-Chain-Analytics/369238-48088

This is also part of a bigger project which we hope to get funded for an overall data hub for the Cardano community. Please see our current Catalyst proposal here: https://cardano.ideascale.com/c/idea/400555

## Problem statement :
DBSync is the best source of raw on-chain data, but it is highly normalized and hard to analyze or apply machine learning in its raw state.

## Our Solution

Our solution is an open-source dataset (this repository) of Cardano on-chain data which provides the community with an analytics-ready dataset of the Cardano blockchain.

The core data source will be Cardano DB-Sync, and the deliverable will be a Github repository of SQL views which create datasets to enable developers and data scientists to answer questions such as:

* How is transaction volume increasing over time?
* What are the transaction fees being paid to the network
* How much ada is moving around the network
* How is money consolidating or distributing amongst wallets
* How many ppl are delegating

## High level project phases
* Data Discovery and community requirement gathering (done)
    * data review and profiling of db-sync 
    * Collaboration with community on requirements (see our discussion section to tell us what kind of questions you want to see answered by this dataset)
* Data Modelling (in progress)
    * Modelling datasets based on available data and community input
    * https://docs.google.com/spreadsheets/d/1q4cw2Al9F3XejzGyYSZJvNfruq7YNNDP4FYZxAsxcRQ/edit?usp=sharing
* SQL Development (in progress)
    * Develop SQL views to aggregate and implement modelled data
* Documentation
    

## How can you help?
Please head over to the Discussion section and tell us what questions you want to be able to answer from the Cardano blockchain!
The more people we have telling us what they want, the better this project will be!

## Usage
In order to use the views contained in this project, you will need an instance of [Cardano DBSync](https://github.com/input-output-hk/cardano-db-sync)

To use, simply run the script contained in base_views.sql. This will create the views in your dbsync instance which you can leverage for your own use.
