# 🚀 Java-Tomcat-CI/CD-with-Jenkins-Ansible-AWS

This project demonstrates a **complete CI/CD pipeline** for deploying a **Java web application** on an **Apache Tomcat server** using **💻 Jenkins**, **🤖 Ansible**, **☕ Maven**, and **☁️ AWS**.

The automated pipeline enables seamless **Continuous Integration** and **Continuous Deployment (CI/CD)**, reducing manual effort and ensuring consistent, reliable deployments.

---

## ⚙️ Pipeline Automation Includes:

1. 🧩 **Source Code Fetching** — Automatically pulls the latest code from **GitHub**  
2. ⚙️ **Build & Package** — Uses **Maven** to compile the source code and generate a `.war` file  
3. 🪣 **Artifact Storage** — Stores the generated **WAR** file in an **Amazon S3** bucket  
4. 🐱‍💻 **Application Deployment** — Uses **Ansible** to deploy the artifact to a **Tomcat** server running on **AWS EC2**  
5. 🔁 **Continuous Integration & Delivery** — **Jenkins** orchestrates the entire workflow, ensuring smooth and repeatable deployments  

---

## 🌟 Tech Stack Summary:
- 🧠 **CI/CD Tool:** Jenkins  
- 🤖 **Automation Tool:** Ansible  
- ☕ **Build Tool:** Maven  
- 🐱‍🏍 **Application Server:** Apache Tomcat  
- ☁️ **Cloud Provider:** Amazon Web Services (EC2, S3)

---

## 🎯 Objective

- 🧱 **Infrastructure Provisioning:** Set up Jenkins + Ansible server and a Tomcat application server on AWS EC2.  
- ⚙️ **Toolchain Integration:** Integrate Jenkins with Maven, AWS S3, and Ansible for build, artifact storage, and deployment automation.  
- 🚀 **Automated Deployment:** Enable zero-downtime delivery by deploying WAR files to Tomcat using Ansible.  
- 📦 **Artifact Management:** Store and version control build artifacts in AWS S3 for traceability and rollback.
---

## Architecture
<img width="933" height="499" alt="diagram-export-16-10-2025-00_29_31" src="https://github.com/user-attachments/assets/f32aec99-373b-4f29-86b9-2f6009b486b6" />


## 🔄 Workflow Summary

1. 🧑‍💻 Developer commits code to GitHub repository.  
2. 🔔 Jenkins pipeline triggers automatically (or manually).  
3. ⚙️ Maven compiles, tests, and packages the Java project into a `.war` file.  
4. 🪣 The WAR file is uploaded to **AWS S3** for artifact storage.  
5. 🤖 Ansible deploys the artifact from Jenkins/S3 to the **Tomcat server** over SSH.  
6. 🌐 Tomcat restarts and the new application becomes live instantly.

---

## 🛠 Steps Performed

Below is the **visual journey** of the complete project (summarized screenshots):

1. 🖥️ **EC2 Instances Setup** – Jenkins+Ansible Server & Tomcat Server running on AWS.  
2. 🔒 **SSH Configuration** – Modified `/etc/ssh/sshd_config` to enable password authentication.  
3. 🔑 **Key-Based Authentication** – Configured SSH key exchange between servers.  
4. 📜 **Tomcat Setup with Ansible** – Installed Java 17, downloaded Tomcat, configured permissions.  
5. ✅ **Playbook Execution** – Verified successful Tomcat setup.  
6. 🌐 **Tomcat Running** – Accessed Tomcat Manager UI.  
7. ⚙️ **Jenkins Installation** – Installed and configured Jenkins on the CI server.  
8. 🔐 **Unlock Jenkins** – Retrieved admin password to set up Jenkins.  
9. 🧩 **Plugin Setup** – Installed Ansible & AWS S3 plugins.  
10. ☁️ **IAM Access Keys** – Generated AWS credentials for Jenkins integration.  
11. 📦 **S3 Artifact Repository** – Created bucket `devops-cicd-artifacts-pankaj-project`.  
12. 🔑 **Jenkins Credentials** – Configured AWS and SSH credentials.  
13. 🛠 **Ansible Tool Setup** – Defined path `/bin` in Jenkins tool configuration.  
14. 🆕 **Pipeline Creation** – Created Jenkins pipeline job `Tomcat-Deployment`.  
15. 🚀 **Deploy Playbook** – Used Ansible to copy `.war` to Tomcat and restart the service.  
16. 📝 **Pipeline Syntax** – Generated Ansible and S3 Groovy script blocks.  
17. ❌ **Error Debugging** – Fixed S3 upload issue due to invalid bucket configuration.  
18. ✅ **Successful Deployment** – WAR deployed to Tomcat; app visible on Tomcat Manager.  
19. 📊 **Final Pipeline Visualization** – All stages passed successfully.

---

## ⚠️ Issues Faced

- ❌ **S3 Bucket Invalid Error**  
  - Error: Status Code: 400 - The specified bucket is not valid  
  - Fix: Corrected region mismatch and verified S3 profile credentials in Jenkins.

- 🔐 **SSH Authentication Denied**  
  - Cause: Password authentication disabled in `sshd_config`.  
  - Fix: Enabled `PasswordAuthentication yes` and restarted SSH service.

- 📦 **Jenkins Artifact Upload Failure**  
  - Fix: Updated Jenkins S3 plugin configuration with correct bucket and region.

---

## ✅ Outcome

- 💯 Fully automated CI/CD pipeline deployed successfully.  
- 📦 WAR file automatically uploaded to S3 and deployed to Tomcat via Ansible.  
- 🌐 Tomcat application running and accessible through browser.  
- 🔁 Zero manual intervention after Jenkins job trigger.

---

## 📚 Key Learnings & Observations

- 🔄 Integration between Jenkins, AWS, and Ansible provides seamless DevOps orchestration.  
- 🔑 IAM user permissions are critical for AWS plugin success.  
- ⚙️ Ansible’s idempotency ensures predictable, repeatable deployments.  
- 📁 S3 is an excellent artifact storage solution for DevOps workflows.  
- 🧩 Jenkins pipeline syntax generator simplifies complex Groovy configurations.

---

## 🌍 Real-World Use Case

This pipeline reflects a **production-grade CI/CD setup** for organizations deploying Java-based microservices or monolithic web apps.  
It’s easily extendable to **Kubernetes, Elastic Beanstalk, or Dockerized environments** for large-scale cloud deployments. ☁️

---

## 🏷 Tags

#DevOps #Jenkins #AWS #Ansible #Tomcat #CICD #Automation #S3 #Maven #Pipeline

---

💡 This project showcases how DevOps tools and AWS services integrate to form a **robust, production-ready automation pipeline** — perfect for demonstrating CI/CD proficiency in real-world scenarios.
