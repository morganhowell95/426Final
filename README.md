JS-Challenge Framework
=======================



The JS-Challenge Framework is a platform in Rails that serves as a visual version control system with automated suggestions on how to improve submitted JavaScript code. The system will provide basic functionality upon submission, such as the ability to create a user account, save/edit code, and receive automated advice on how to improve the code. Improvements will be based on a list of parameter set by the user, including a white list, black list, and an enforced structure hierarchy. Using the JavaScript parser Acorn, we parse out an AST (abstract syntax tree) from  valid JavaScript code the user submits. Our APIs traverse the tree giving suggestions based on the set lists and structures the user has provided after sigining in. The final product will be deployed live on Heroku.

In the future we envision an app of this nature being used beside a service such as HackerRank. The interviewer could set restrictions in the white list and black list (such as enforcing the presence of a for loop and restricting while loops) and have the final code graded not only on the output, but also on the efficiency, run time, and cleverness!
	

****NOTE:
This project is not yet completely finished, we are currently implementing the ability for users to save submitted code so they can load past code into the challenge console, via the API, for analysis. The current implementation does fulfill all the required aspects of the COMP426 final project rubric. 

Codiad would not allow us to upload every file and directory, so we decided to include the most important files. Namely the contollers, HTML, CSS, JavaScript, ORM, migrations, routes, and GemFile.
We've also deployed the project live at:

https://js-challenge-framework.herokuapp.com
