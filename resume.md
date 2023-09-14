---
margin-left: 2cm
margin-right: 2cm
margin-top: 1cm
margin-bottom: 2cm
title: Thomas Crha
description-meta: 'Senior Engineer with a strong background programming, operations and application development.'
keywords:
  - 'python'
---
### Senior Engineer with a strong background programming, operations and application development.

###### [ [thomascrha.github.io](https://github.com/thomascrha) ] . [ [thomas@9bitbyte.com](mailto:thomas@9bitbyte.com) ] . [ [0449 856 278](tel:0449856278) ]

## Skills

**Programming:** Python, Go, Rust, JavaScript, C, bash, C#/ASP.NET, SQL, HTML/CSS 

**Data science/Machine Learning:** Pandas, NumPy, Matplotlib, Scikit-learn, SciPy, Jupyter, Seaborne, Plotly, Hugginface, OpenAI, AzureML, Argilla, Databricks

**Web:** FastAPI, Flask, Django, SQLAlchemy, Celery, Sveltekit, Tailwind, React, Angular 1.x, MaterialUI, Vue, HTMX 

**Infrastructure and Tools:** RabbitMQ, Redis, Docker, Docker-Swarm, Kubernetes, AWS, GCP, Azure, Terraform, Helm, Ansible, Packer, Vagrant

**Databases:** PostgreSQL, MySQL/MariaDB, MSSQL, MongoDB, InfluxDB, ElasticSearch


## Experience

### Machine Learning Engineer, QBE Australia 

2022-current, Sydney, NSW

Working within the data analytics team building/maintaining a variety of services and products used by the wider business to improve claim management. Providing ML-Ops support for the team – setting up GPU nodes, cluster data connection and configurations.

- Implemented a new Docker registry/git tagging system to improve overall maintenance of there stack as well as being able to track down bugs faster.
- Migrated a employee allocation tool from a legacy system to a new system built on top of a modern stack (FastAPI, HTMX, PostgreSQL, Docker). 
- Refactored/Rewrote a core application into something which is far more maintainable as well as extensible.

### Senior Engineer, Dragonfly Technologies 

2019-2022, Sydney, NSW

Working on multiple greenfield projects for various clients based primarily around automation of network infrastructure (routers, switches etc.). With a focus on designing, creating and implementing backend solutions and performing BAU Dev-Ops/SRE roles for managing and maintain clients infrastructure using infrastructure as code paradigms.
	
- Designed and developed a collection engine for collecting, processing and actioning network device infrastructure by crawling through a network and hoping between devices collecting their data.
- Worked on [Rapid for Telstra Purple](https://www.dragonflytechnologies.com/case-studies/telstra-rapid#) a Ansible Tower like offering for managing and provisioning network infrastructure.
- Designed and developed [fusion](https://www.dragonflytechnologies.com/services/automated-managed-services) a automated managed services platform. 

### Full Stack Engineer, Appen Australia

2018-2019, Sydney, NSW

Part of a small team maintaining Appen's language resource work tool, Ampersand. Running the day-to-day tasks of the site (dev-ops and infrastructure management),feature creation and bug fixing. 

- Helped move from our old system to Ampersand beginning 2018
- Implemented a large-scale data automated onboarding/deletion system (2tb of data per week)
- Implemented our lexicon tool into Ampersand feature set
- Implemented the video transcription module used inside the tool allowing users to annotate video recordings. 

### Project Engineer, Appen Australia

2012-2018, Sydney, NSW

Creating custom solutions for various projects to meet client and business needs.

- Helped transition from python2 -> python3 (conversion of scripts and sites)
- Developed custom scripts/web applications for client projects 
- Various ETL integration’s
- Linux server work to deploy and manage the various scripts/web application
- Various data science analysis’s
- Created multiple different packaging scripts and workflows for repeat clients
- Created an automated backup system utilising AWS's Glacier storage tier

### Owner and Operator, 9bitbyte

2013-current, Sydney, NSW

A computer solution company providing mainly small business in my local area with various tech services and assistance.

## Achievements 

**Fusion:** a web-application/system built for Dragonfly Technologies to be used within there organisation helping them provision, automate, monitor and manage customers infrastructure – web-applications, VM’s, cluster, router, firewalls etc. . The application had two main functions; services – these where graph based work flows – all of which was customisable via a react front-end – where each node could be some sort of task (python script, Ansible playbook etc.) – these tasks would then be run inside the customers network via a micro-service component called a satellite – and depending on how that task went (succeeded or failed) would then determine how the rest of the work flow would run. The other functionality was the – collector – the idea here being long running tasks collecting data over time – which then would be sent back to central source. The application also included blob and data storage capabilities which could be used to store data from services and collectors as well as RBAC capabilities managing user permissions.

**Discovery tool:** a tool developed for Telstra allowing for finding of assets and network devices on a network without knowing what is there in the first place. The engine works by connecting to a set of know devices – collects data from them and then attempts to ‘crawl’ (ssh to any devices that device has knowledge of) – and in doing so being able to traverse a complex network structure to find all devices that are currently connected on that network.

**End-to-end selenium testing suite:** a client-side testing suite implemented with server tests, utilising selenium, Docker and py-test allowing end-to-end testing of web applications. The framework provides a simple methodology for working through web pages via xpath's, allowing for DOM object waiting/checking.

