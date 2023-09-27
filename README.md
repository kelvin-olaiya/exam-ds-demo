# Alchemist batch distribution

## Requirements

In order to be able to launch the demo you must have install the following software:

* JDK 11+
* Docker with Docker compose

## What will the demo do

Let's look at the directory structure:
```txt
.
├── alchemist.jar
├── client
│   └── client-config.yml
├── distribute.sh
├── distribution-config.yml
├── docker-compose.yml
├── runDemo.sh
└── server
    ├── Dockerfile
    ├── server-config.yml
    └── startup.sh
```

And now let's see what are the demo steps:

1. The first step consists on bringing up the needed infrastructure. That's to say the **etcd** cluster, the **rabbitMQ** message broker and two **Alchemist server** nodes. For this you may take a look at the `./docker-compose.yml` file.
2. Now we should have a pair of nodes ready to receive simulation job orders. So a client is launched using the `./alchemist.jar` file. (Due to its dimensions, the jar file is not directly included in the demo git repository but, it will be downloaded if it is not found in the root directory). You can find the simulation configuration at `./client/client-config.yml`
3. As the client is launched, after a while will we get back the results. By configuration, the result will end up in the `./export` folder.
4. And that's it!

## Running the demo

Just run the following command:

```bash
./runDemo.sh
```
