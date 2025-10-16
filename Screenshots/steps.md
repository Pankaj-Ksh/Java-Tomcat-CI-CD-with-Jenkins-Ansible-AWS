## 🧱 Project Setup & Configuration Steps

### Steps

1. Launch **2 EC2 instances** — (Jenkins + Ansible Server) and (Tomcat Server).

2. Open both instances, then set up **Ansible configuration and installation** between the master (Ansible) and slave (Tomcat).

3. Edit the **context.xml** file, add the required content and keep file ready on local machine (Jenkins + Ansible Server).

4. Edit the **tomcat_users.xml** file, add the required content and keep file ready on local machine (Jenkins + Ansible Server).

5. Write the **tomcat.yml** playbook.

6. Access the Tomcat server through the **public IP** of the slave machine (Tomcat server) on **port 8080**.

7. Install **Jenkins** on the Jenkins + Ansible Server.

8. After installation, copy the **public IP** of the Jenkins + Ansible Server on **port 8080**.

9. Open the **Jenkins UI** and configure the initial setup.

10. Install the required **plugins** for S3 and Ansible.

11. Create a **pipeline job** named `Tomcat-Deployment`.

12. On the Jenkins + Ansible Server, create the **deploy.yml** file and add the required content (ensure correct source and destination paths).

13. Copy the **deploy.yml** file to `/etc/ansible/`.

14. In Jenkins UI, write the **pipeline code**.

15. For **storing artifacts in S3**, create the pipeline syntax.  
    - Ensure the plugin is installed, credentials are added, and the bucket is created.

16. For **Ansible**, ensure the plugin is installed and credentials are added.  
    - Then create syntax for Ansible with the correct playbook and inventory paths.

17. After completing the pipeline, **build the job**.

18. Once the build is successful, **access the Tomcat server** through the browser.

---

✅ **Outcome:**  
A fully automated CI/CD pipeline from **GitHub → Maven -> Jenkins → AWS S3 → Ansible → Tomcat**, ready for redeployment or future extension.
