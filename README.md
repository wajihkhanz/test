I am doing the classwork for the 20th lecturer
a small cicd project

3 Manual Steps (Automation ke baghair): (1) File mojood hone ki tasdeeq karna, (2) File khali na hone ka check, (3) Syntax/keywords (server, listen) parh kar check karna.

CI Part: GitHub par code push hote hi check-config.sh script ka automatically chalna aur error pakarna CI hai.

CD Start Point: Jab script SUCCESS (exit 0) de de, uske baad is file ko live web server par copy karke server reload karna CD hoga.

3 Advantages: (1) Human errors se bachat, (2) Live server crash hone ka khatra kam, (3) Har change ka record aur fast feedback.

3 Best Practices: (1) Chote aur clear commits karna, (2) Har change ko pehle test karna, (3) Config files ko version control (Git) mein rakhna.