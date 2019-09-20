### Docker/Docker Compose/Dockerize using Nginx + HTTPS on localhost / Windows

##### Tools:
- [Docker](https://www.docker.com/)
- [docker-compose](https://docs.docker.com/compose/)
- [Dockerize](https://github.com/jwilder/dockerize)


**Run:** `$ docker-compose up -d`

The generated certificate will be located in the **./docker/certs** folder.
- Run the file with extension .crt | Ex.: *examplehttps.test-selfsigned.crt*
- Click the Install Certificate button;
- Repository Location: Local Machine;
- Put all certificates in the following repository: **Trusted Root Certification Authorities**;


Note: This is an environment for local studies and development, use in production is not recommended. Improvements are very welcome!
