# cis-ubuntu-packer
### What's this? 
####  This project packs a "Center for Internet Security" benchmark hardened Ubuntu image for Google Compute Engine
`CIS Hardened Ubuntu Image`

How to create the hardened image:

1. Clone this repo to local system with gcloud sdk installed. See: https://cloud.google.com/sdk/install
1. Have packer in the system path. See: https://www.packer.io/intro/getting-started/install.html
1. Edit the file: packer.json 
change the line `project_id` to reflect the proper GCloud project     
1. Authenticate / get a JWT token for Gcloud
```sh
gcloud auth application-default login
```
1. Pack a CIS hardened Ubuntu Image
```sh
packer build ./packer.json
```

---
2019 Gordon Young - gjyoung1974@gmail.com

### Usage Example

$ ~/packer build ./packer.json

### Troubleshooting
- If you get an error like this below follow the steps indicated to ensure the Compute Engine API is enabled for your project.
- Another possibility that the project code is incorrect.  Be sure the file "packer.json" is modified to match you rproject settings.  
- ==> googlecompute: Error creating instance: googleapi: Error 403: Access Not Configured. Compute Engine API has not been used in project 1234567890 before or it is disabled. Enable it by visiting https://console.developers.google.com/apis/api/compute.googleapis.com/overview?project=1234567890 then retry. If you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry., accessNotConfigured
