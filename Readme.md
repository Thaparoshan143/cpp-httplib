## Customized **cpp-httplib** with Premake

> [!Note]
> For detailed docs visit original repo: https://github.com/yhirose/cpp-httplib or master branch

**How to use (MACOS only)**

1. Clone the repo
```bash
git clone -b main https://github.com/Thaparoshan143/cpp-httplib
```

2. Generate required cred. (if, ssl enabled/used, refer below..)

3. Change the source code in main <br />
If required, refer to the original repo [example](https://github.com/Thaparoshan143/cpp-httplib/tree/master/example) <br />
#note: ensure that any library (external), used are installed & linked later in premake script..


4. Compile/Build using bash script
```bash
bash buru.sh # this will build using premake and run the exe.
# if cleanup required use
# bash clean.sh
```

<hr />

**Requirements** 

All lib have deafult search path of homebrew. so, install the required packages from brew..
```bash
brew install openssl
# if zlib used
# brew install zlib .. and so on .. (also make sure to link it..)
```

#note: if search path is different, update in premake with respective links..


> [!IMPORTANT]
> You need to generate the .pem (certificate for ssl usage)

**Follow these steps to generate the required creds. (i.e key.pem, csr.pem & cert.pem files)**

1. Generate private key
```bash
openssl genrsa -out key.pem 2048
```

2. Create certificate signing request
```bash 
openssl req -new -key key.pem -out csr.pem
```

3. Generate self signed certificate
```bash 
openssl x509 -req -days 365 -in csr.pem -signkey key.pem -out cert.pem
```

> [!Note]
> All the params (or flags) are modifiable as per need.. 
