# cis-ubuntu-packer
CIS Hardened Ubuntu Docker Image

### Authenticate / get a JWT token for Gcloud
`gcloud auth application-default login`

### Pack a CIS hardened Ubuntu Image
`packer build ./packer.json`

---
2019 Gordon Young - gjyoung1974@gmail.com

### Prerequisite verification steps


### Usage Example

$ ~/packer build ./packer.json

### Troubleshooting
- If you get an error like this below follow the steps indicated to ensure the Compute Engine API is enabled for your project.
- Another possibility that the project code is incorrect.  Be sure the file "packer.json" is modified to match you rproject settings.  
- ==> googlecompute: Error creating instance: googleapi: Error 403: Access Not Configured. Compute Engine API has not been used in project 1234567890 before or it is disabled. Enable it by visiting https://console.developers.google.com/apis/api/compute.googleapis.com/overview?project=1234567890 then retry. If you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry., accessNotConfigured
