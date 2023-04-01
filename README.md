# workshop-terraform

## LAB1. Initializing environment

### 1.1 - Create an Astra Account

> **Note**: **Datastax Astra** is a cloud-native, fully managed database-as-a-service (DBaaS) based on Apache Cassandra. It provides a scalable, performant and highly available database solution without the operational overhead of managing Cassandra clusters. Astra supports both SQL and NoSQL APIs, and includes features like backup and restore, monitoring and alerting, and access control. It enables developers to focus on application development while the database infrastructure is managed by Datastax.

- `✅ 1.1.a` - Access [https://astra.datastax.com](https://astra.datastax.com) and register with `Google` or `Github` account

![](images/astra-login.png?raw=true")

### 1.2 - Create an Astra Token

- `✅ 1.2.a` Locate `Settings` (#1) in the menu on the left, then `Token Management` (#2)

- `✅ 1.2.b`Select the role `Organization Administrator` before clicking `[Generate Token]`

![](https://github.com/DataStax-Academy/cassandra-for-data-engineers/blob/main/images/setup-astra-2.png?raw=true)

- `✅ 1.2.c` - Copy your token in the clipboard. With this token we will now create what is needed for the training.

![](https://github.com/DataStax-Academy/cassandra-for-data-engineers/blob/main/images/setup-astra-3.png?raw=true)

### 1.3 - Open your Environment

> **Note**: **Gitpod** is a cloud-based integrated development environment (IDE) that allows developers to build, test and run applications directly in their web browser. It provides preconfigured dev environments for GitHub projects, so developers can start coding immediately without setting up local environment. Gitpod saves time and streamlines the development process.

> `✅ 1.3.a` ↗️ _Right Click and select open as a new Tab..._
>
> [![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/datastaxdevs/workshop-swinburne)

### 1.4 - Setup Astra CLI

> **Note**:  The **Astra CLI** is a command-line interface (CLI) tool for managing Apache Cassandra databases hosted on Datastax Astra. It allows developers to perform tasks like creating and managing databases, executing Cassandra queries, and managing security and access control. The Astra CLI simplifies database management and provides an alternative to the Astra web interface, enabling automation and integration with other tools and workflows.

- `✅ 1.4.a` **Locate the terminal called `setup` and check that the CLI is available**

```
astra --version
```

> 🖥️ `output`
>
> ```
> $ astra --version
> 0.2.1
> ```

- `✅ 1.4.b` **Trigger the setup command**

```
astra setup
```

> 🖥️ `output`
>
> ```
>     _____            __                  
>    /  _  \   _______/  |_____________    
>   /  /_\  \ /  ___/\   __\_  __ \__  \  
>  /    |    \\___ \  |  |  |  | \// __ \_ 
>  \____|__  /____  > |__|  |__|  (____  /
>          \/     \/                   \/ 
>            Version: 0.2.1
> 
>  -----------------------
>  ---      SETUP      ---
>  -----------------------
> 
> $ Enter an Astra token:
> ```

- `✅ 1.4.c` **Provide your token as asked (starting witg AstraCS:..)**

> 🖥️ `output`
>
> ```
> [OK]    Configuration has been saved.
> [OK]    Enter 'astra help' to list available commands.
> ```

### 1.5 - Setup Terraform

- `✅ 1.5.a` **Use the token to setup terraform**

```
export ASTRA_TOKEN=`astra config get default --key ASTRA_DB_APPLICATION_TOKEN`
sed -i "s/#TOKEN#/${ASTRA_TOKEN}/g" /workspace/workshop-terraform/resources/provider.tf
```

- `✅ 1.5.b` **Create db**

```
cd /workspace/workshop-terraform/resources/
terraform apply
```

Enter 'yes' when asked

- `✅ 1.5.c` **See you db being created**

```
astra db list
```





