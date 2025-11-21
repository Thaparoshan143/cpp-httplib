## Customized **cpp-httplib** with Premake

> [!Note]
> For detailed docs visit original repo: https://github.com/yhirose/cpp-httplib or master branch

> [!Warning]
> This is intended to be used as submodule/library 

**How to use (MACOS only)**

1. Clone the repo
```bash
git submodule add -b sm https://github.com/Thaparoshan143/cpp-httplib /path/to/submodule
```

2. Generate required cred. (if, ssl enabled/used, refer below..)

3. include it in the source code as: <br />
```c++
#define ANY_MACRO_REQUIRED
#include<httplib.h>

// remaining source 
```
#note: ensure that any library (external), used are linked later in premake..

<hr />

> [!IMPORTANT]
> Generation of the certificate is required for ssl usage.

**Follow these steps to generate the required creds. (i.e key.pem, csr.pem & cert.pem files)**

1. Generate private key
```bash
openssl genrsa -out key.pem 2048
```

2. Create certificate signing request
```bash 
openssl req -new -key key.pem -out csr.pem
```
Fill the required information in cli.. (like, country, state, email, etc..)

3. Generate self signed certificate
```bash 
openssl x509 -req -days 365 -in csr.pem -signkey key.pem -out cert.pem
```

> [!Note]
> All the params (or flags) are modifiable as per need.. 
