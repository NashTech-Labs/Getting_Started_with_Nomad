## Description

Here, In this template, we will create our first and simple job using the technology provided by HashiCorp called Nomad in our local system. 


---

#### Pre-requisite

* Docker 
* Nomad 


---

### Steps:-

1. Go the Directory where you will find the `install_nomad.sh`
2. To run the file use the `chmod a+x <file-name>.sh`
3. Run the agent in the terminal using the commmand

```
sudo nomad agent -dev \
  -bind 0.0.0.0 \
  -network-interface='{{ GetDefaultInterfaces | attr "name" }}'
```

4. In a second terminal session, export the cluster address.

`export NOMAD_ADDR=http://localhost:4646`

5. Use the command to run: 
`nomad job run <File-Name>.nomad.hcl`

---
