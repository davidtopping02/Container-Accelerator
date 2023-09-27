# Setting up s3 bucket to store state
- Append your github username to the end of the bucket string on line 3 of main.tf
- This is required as the bucket name must be globally unique (like a domain name)
- After changing the bucket name, you need to then change the bucket

# IAM user permissions
- The following are the permissions that must be added to the IAM to give it the required access
```
{
*:*
}
```