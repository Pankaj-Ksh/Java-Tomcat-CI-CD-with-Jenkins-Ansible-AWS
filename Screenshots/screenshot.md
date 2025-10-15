## 1. AWS EC2 Instances Overview 🖥️
This image shows the Amazon Web Services (AWS) EC2 console, listing two running instances: one for "Jenkins + Ansible-Server" and another for "Tomcat-Server," along with their public and private IP addresses.
<img width="1366" height="652" alt="1" src="https://github.com/user-attachments/assets/b869e342-a9a8-4207-b1af-10f92d8c0322" />

## 2. SSH Configuration Modification 🔒
This screenshot displays a terminal session where the /etc/ssh/sshd_config file is being edited to explicitly enable PasswordAuthentication and disable PermitEmptyPasswords, likely to allow password-based SSH access for Ansible.
<img width="1366" height="768" alt="2" src="https://github.com/user-attachments/assets/e73ff5b8-d43d-4681-a201-c17f455de20b" />

## 3. Key-based Authentication Setup and Ping Test 🔑
This terminal output shows the process of using ssh-copy-id to install an SSH key to a target machine, confirming key-based authentication is set up, followed by an Ansible ping test to verify connectivity.
<img width="1366" height="768" alt="3" src="https://github.com/user-attachments/assets/b0ac7af5-9e28-49f9-9f34-579b9f1f4067" />

## 4. Ansible Playbook for Tomcat Setup (Part 1) 📜
This image shows the initial tasks within an Ansible playbook to set up Tomcat. It includes defining variables, installing Java 17 (Amazon Corretto), creating the Tomcat installation directory, and downloading the Tomcat archive.
<img width="1366" height="768" alt="4" src="https://github.com/user-attachments/assets/403b735b-b4c2-448a-b55b-bb644da39b4e" />

## 5. Ansible Playbook Execution for Tomcat Setup (Part 2) ✅
This screenshot captures the successful execution of the Ansible playbook. It shows the remaining tasks for Tomcat, such as extracting the archive, moving directories, creating user and context files, making the Tomcat script executable, and starting the Tomcat service.
<img width="1366" height="768" alt="5" src="https://github.com/user-attachments/assets/7e0dfa2d-f7b3-4b3f-937d-747a3958567a" />

## 6. Tomcat Web Application Manager 🌐
This image displays the Apache Tomcat Web Application Manager in a browser, confirming that Tomcat is running and listing its default applications like the documentation, examples, and the manager interface itself.
<img width="1366" height="727" alt="6" src="https://github.com/user-attachments/assets/6ba03511-ad0c-4300-86f8-29361ac614fc" />

## 7. Jenkins Installation Commands ⚙️
This terminal view shows the sequence of commands used to install and manage Jenkins on the server. It includes adding the Jenkins repository, importing the GPG key, installing Jenkins with a dependency like Java 17, and using systemctl to enable, start, and check the service status.
<img width="1366" height="768" alt="7" src="https://github.com/user-attachments/assets/2eff45c0-251a-4794-b708-b705defe1503" />

## 8. Jenkins Initial Setup: Unlock Page 🔐
This browser screenshot displays the Jenkins "Unlock Jenkins" setup page, which requires the administrator to input the initial password found in the /var/lib/jenkins/secrets/initialAdminPassword file on the server.
<img width="1366" height="727" alt="8" src="https://github.com/user-attachments/assets/58e4a65b-6365-43ec-abb8-82a2315657b0" />

## 9. Retrieving Jenkins Initial Admin Password 🔑
This terminal output shows the Jenkins service running status and, more importantly, the command (cat /var/lib/jenkins/secrets/initialAdminPassword) used to retrieve the initial administrator password needed to unlock Jenkins.
<img width="1366" height="768" alt="9" src="https://github.com/user-attachments/assets/cdbf6e55-8220-417e-a9cf-3543fe37847d" />

## 10. Jenkins Available Plugins: Ansible Search 🧩
This image shows the "Available plugins" section of the Jenkins dashboard. The user is searching for and viewing a list of plugins related to "ansi," specifically highlighting the Ansible and Ansible Tower plugins for integration.
<img width="1366" height="727" alt="10" src="https://github.com/user-attachments/assets/9e5580da-c3c8-40f6-95cb-dddcf069028c" />

## 11. Retrieving AWS IAM Access Keys ☁️
This screenshot from the AWS IAM console shows the last step of creating a user access key. It displays the generated Access Key and Secret Access Key that will be used by Jenkins to interact with AWS services.
<img width="1366" height="653" alt="11" src="https://github.com/user-attachments/assets/0f02fb4c-792b-40c0-9d25-01f7bcdbc1bb" />

## 12. AWS S3 Bucket Artifact Repository 📦
This screenshot displays an AWS S3 bucket named "devops-cicd-artifacts-pankaj-project" in the AWS console. It is currently empty and will be used as a storage location for build artifacts.
<img width="1366" height="653" alt="12" src="https://github.com/user-attachments/assets/c4a246f9-1f10-4724-bc61-435323af03c1" />

## 13. Configuring Jenkins S3 Profile Credentials 🔑
This image shows the Jenkins System Configuration page where an S3 profile named "pankaj" is being set up. It uses an Access Key and Secret Key to authenticate Jenkins with AWS for S3 operations.
<img width="1366" height="729" alt="13" src="https://github.com/user-attachments/assets/ac053dd5-80a6-4ea4-851d-257e76db3697" />

## 14. Configuring Ansible Tool in Jenkins 🛠️
This image shows the Jenkins "Manage Tools" configuration page where a new Ansible installation is being set up. It defines the name as "ansible" and specifies the path to the executables directory as /bin.
<img width="1366" height="727" alt="14" src="https://github.com/user-attachments/assets/fd62f1b8-e5ea-42d1-84e9-863d2ad5a56e" />

## 15. Creating SSH Credentials in Jenkins 👤
This screenshot shows the Jenkins Credentials page used to create new "Username with password" credentials. The root user's password is being saved with the ID "ansible" for SSH connections to the target server.
<img width="1366" height="727" alt="15" src="https://github.com/user-attachments/assets/f2108651-0707-48c3-8178-57d27443a985" />

## 16. Creating a Jenkins Pipeline Job 🆕
This screenshot illustrates the creation of a new item in Jenkins named "Tomcat-Deployment." The job type selected is "Pipeline," which is suitable for long-running, complex orchestration activities.
<img width="1366" height="727" alt="16" src="https://github.com/user-attachments/assets/223a7e2a-c413-45a9-8b6e-f768aa8adeb5" />

## 17. Ansible Playbook for WAR Deployment 🚀
This terminal view shows the contents of an Ansible deployment playbook (deploy.yml). The tasks define copying a compiled WAR file from the Jenkins workspace to the Tomcat webapps directory and then restarting the Tomcat service.
<img width="1366" height="768" alt="17" src="https://github.com/user-attachments/assets/23065122-b2d9-4335-9267-66556e66974b" />

## 18. Jenkins Pipeline Syntax for Ansible Invocation (Input) ⚙️
This image shows the input form of the Jenkins Pipeline Syntax generator for the ansiblePlaybook step. Key parameters like the Ansible tool name, playbook file path (/etc/ansible/deploy.yml), inventory file, and SSH credentials are being specified.
<img width="1366" height="729" alt="18" src="https://github.com/user-attachments/assets/e893f80c-b30a-4ccd-bf2e-6839e4d378ef" />

## 19. Pipeline Script Generation Output 📝
This image shows the Jenkins Pipeline Syntax generator, displaying the Groovy script output for the ansiblePlaybook step with specific parameters like credentials ID, inventory path, and disabling host key checking.
<img width="1366" height="729" alt="19" src="https://github.com/user-attachments/assets/fe26b331-5810-4cf7-b15b-f65b629cfca1" />

## 20. Jenkins Pipeline Syntax for S3 Upload ⬆️
This image shows the input form of the Jenkins Pipeline Syntax generator for the s3Upload step. It configures the step to use the "pankaj" S3 profile, upload all **/*.war files to the devops-cicd-artifacts-pankaj-project bucket in the ap-south-1 region.
<img width="1366" height="728" alt="20" src="https://github.com/user-attachments/assets/76e90839-d20b-4011-b591-ee70f905c4de" />

## 21. Pipeline Console Output: S3 Bucket Error (Attempt 1) ❌
This Jenkins console output shows an error during the "Store Artifact" stage. The S3 upload fails with a Status Code: 400 and a message indicating "The specified bucket is not valid," likely due to a misconfiguration or an invalid bucket name/region combination.
<img width="1366" height="729" alt="21" src="https://github.com/user-attachments/assets/1eaeb820-5527-4b5d-b9cf-924914654d61" />

## 22. Pipeline Console Output: S3 Bucket Error (Attempt 2) 🚫
This is another Jenkins console output, similar to the previous one, showing a repeated failure in the "Store Artifact" stage with a Status Code: 400 and the error "The specified bucket is not valid," confirming the persistent S3 configuration issue.
<img width="1366" height="729" alt="22" src="https://github.com/user-attachments/assets/09f62e88-1deb-49cb-b802-652d966f9926" />

## 23. Pipeline Console Output: Successful Deployment Recap ✅
This Jenkins console output displays the final stages of a successful pipeline run (Build #10). It shows the Ansible playbook executing the "Deploy WAR to Tomcat" and "Restart Tomcat" tasks, with a final "SUCCESS" status and a play recap of changed=2.
<img width="1366" height="729" alt="23" src="https://github.com/user-attachments/assets/05b0c8b1-d1b0-4f47-9e03-493a0d2baaff" />

## 24. Tomcat Manager: Application Deployed 🌐
This browser screenshot displays the Tomcat Web Application Manager where a new application, "/mywebapp," is now listed as "true" (running). This confirms that the WAR file was successfully deployed to the Tomcat server.
<img width="1366" height="729" alt="24" src="https://github.com/user-attachments/assets/14a50a44-75c0-4191-9895-eae47dff2e6a" />

## 25. Visual Representation of the Java-Application🚀
This image presents a high-level "DevOps CI/CD Pipeline" diagram. It visually maps the flow of tools: GitHub → Jenkins → Maven → Amazon S3 → Ansible → Tomcat, describing the role of each component in the automated process.
<img width="1366" height="727" alt="25" src="https://github.com/user-attachments/assets/bda5edcb-5a30-493d-a304-d77d2a6de7b3" />

## 26. S3 Object View: Artifact Stored in AWS 💾
This screenshot from the AWS S3 console confirms the successful storage of the build artifact. It shows the object "mywebapp.war" inside the devops-cicd-artifacts-pankaj-project bucket, including its properties, size (4.7 KB), and S3 URI.
<img width="1366" height="653" alt="26" src="https://github.com/user-attachments/assets/ac510a1c-38c0-4516-8aaa-6ba139d70164" />

## 27. Jenkins Pipeline Overview and Deployment Stage 📊
This image shows the Jenkins Pipeline Overview for build #10. The stages Git Checkout, Maven Compile, Maven Test, Maven Clean & Package, Store Artifact to S3, and Deploy To Tomcat (via Ansible) are all marked as successful, with the deployment stage details visible below.
<img width="1366" height="729" alt="27" src="https://github.com/user-attachments/assets/35e5de42-ecab-4f55-8bc7-f5e59f7daec4" />
