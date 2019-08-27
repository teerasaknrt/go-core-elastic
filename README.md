*** Project Core Elastic service ***
---
Describe
-----

**API**

- Go version 10 up
- Golang:1.10-alpine3.8 to build
- Gin-Gonic framework
- Core-Elastic
- Port :8080
----

### **Local** 


- go build -o core-elastic-service && ./core-elastic-service


---

### **Docker** ###

- docker build -t apicore-elastic .

- docker run -it -p 8080:8080 --rm --name apicore-elastic apicore-elastic
