# OntologicalConflicts
Data and analysis code for the forthcoming article:

**Revilla-Minaya, C. Well-being and biological conservation: Ontological conflicts in an Indigenous community in the Peruvian Amazon. Environment&Society**, that will be available open-access upon publication.


## Ethical use of this repository

Anonymized data from the Indigenous Matsigenka communities (in the files ``ranking_mats_self.csv`` and `` ranking_mats_mnp.csv``) and Manu National Park (MNP) employees (``ranking_mnp_self.csv`` and `` ranking_mnp_mats.csv``), included in this repository, are provided so that other researchers can perform and check the analyses in the associated manuscript. Due to our agreements with the communities and MNP staff, these data shall not be used for any other purpose unless express permission is granted by both groups. If you are interested in using these data for another purpose, please contact Caissa Revilla-Minaya (crevilla-minaya@amnh.org) to obtain information about how to contact the Matsigenka communities and MNP staff and request such permission.


<br/>
 
**To reproduce the analyses in this manuscript and create the figures included in the main text:**

1.	Create a project folder on your computer and name it whatever you want.
2.	Put the file ``RunAllRankings.R`` in the project folder.
3.	Inside the project folder, create three sub-folders named (exactly) Code, Plots, and Data.
4.	Put the files ``ranking_mats_self.csv``, `` ranking_mats_mnp.csv``, ``ranking_mnp_self.csv`` and `` ranking_mnp_mats.csv`` inside the Data folder.
5.	Put all the other files inside the Code folder.
6.	Open the file `` RunAllRankings.R`` and set the path to your project folder.
7.	Run the parts of `` RunAllRankings.R`` in order in R.
8.	Figures in the manuscript will appear in the Plots folder.

