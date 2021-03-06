# JAVA-JSP

JSP technology is used to create web application just like Servlet technology. It can be thought of as an extension to servlet because it provides more functionality than servlet such as expression language, jstl etc.
<br/>
A JSP page consists of HTML tags and JSP tags. The jsp pages are easier to maintain than servlet because we can separate designing and development. It provides some additional features such as Expression Language, Custom Tag etc.

# Advantage of JSP over Servlet
There are many advantages of JSP over servlet. They are as follows:

# 1) Extension to Servlet
JSP technology is the extension to servlet technology. We can use all the features of servlet in JSP. In addition to, we can use implicit objects, predefined tags, expression language and Custom tags in JSP, that makes JSP development easy.

# 2) Easy to maintain
JSP can be easily managed because we can easily separate our business logic with presentation logic. In servlet technology, we mix our business logic with the presentation logic.

# 3) Fast Development: No need to recompile and redeploy
If JSP page is modified, we don't need to recompile and redeploy the project. The servlet code needs to be updated and recompiled if we have to change the look and feel of the application.

# 4) Less code than Servlet
In JSP, we can use a lot of tags such as action tags, jstl, custom tags etc. that reduces the code. Moreover, we can use EL, implicit objects etc.

# Create War File
I provide the steps on how to create a WAR file in Eclipse. I also show how to deploy the WAR file on Tomcat.<br/>


* In Eclipse, stop Tomcat

* Right-click your project and select Export > WAR File

* In the Destination field, enter: __any-directory/web_student_tracker.war__

* Outside of Eclipse, start Tomcat
  If you are using MS Windows, then you should find it on the Start menu

* Make sure Tomcat is up and running by visiting: http://localhost:8080<br/>

* Deploy your new WAR file by copying it to <tomcat-install-directory>\webapps<br/>
   Give it about 10-15 seconds to make the deployment. You'll know the deployment is over because you'll see a new folder created in        webapps ... with your WAR file name.<br/>

* 7. Visit your new app. If your war file was: web_student_tracker.war then you can access it with:  http://localhost:8080/web_student_tracker/<br/>
