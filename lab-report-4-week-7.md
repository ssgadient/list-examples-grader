# Part 1  
I chose the task where I change the name of the "start" parameter and its uses to "base".  

Here is the string of vim commands I used to complete the task in as few keystrokes as possible.  

`/start<Enter>cebase<Esc>n.n.:wq<Enter>`  

21 characters!  

When we first open vim, the file looks like this. 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step1.PNG)  

After using `/start` :

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step2.PNG)  

After using `<Enter>ce` :

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step3.PNG)  

After using `base<Esc>` : 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step4.PNG)  

After using `n` : 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step5.PNG)  

After using `.` : 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step6.PNG)  

After using `n` again : 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step7.PNG)  

After using `.` again : 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step8.PNG)  

After using `:wq` : 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step9.PNG)  

After using `<Enter>` : 

![Image](https://ssgadient.github.io/CSE15L/lab-6/Step10.PNG)  

# Part 2
The first method took 48.1 seconds. This was mainly due to the fact that my RSA id is somewhat messed up right now and I have to type in my password every time. Additionally, it took time to transfer the file to the remote server, after which I had to login and cd to the right folder and then run the bash script, which took a few seconds. 

The second method took 25.4 seconds. It was much faster because it was already on the remote server and I didn't have to deal with all the authentiatication issues that method 1 had. Additionally, I did not have to switch directories or think about where the file is located, since I was doing everything from the week6-skill-demo1 directory. 

As for which method I prefer using, most of the time, I would use the first method simply because visual studio code is a user friendly ide that allows me to edit my code quickly with the standard controls. Generally, I try and make everything work on the local machine before moving over to the remove to minimize time lost switching between local and remote. However, I can see a scenario where I just have to change one tiny thing before loading it the remote server. In that case, I would rather edit it quickly with vim before testing it so I don't have to move the file over. Editing remotely is especially useful when the files get large, since waiting for large files to transfer eats up a lot of time. 

But overall, I prefer using my local machine, even if the task has to be run remotely. I can always write a powershell script to run things on the remote server if it ever annoys me too much. 