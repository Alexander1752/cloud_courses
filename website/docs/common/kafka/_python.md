## Exercises

From this point, we will use the python script provided in the ZIP archive.

:::note
To continue the lab, we need to create a virtual environment and install the `confluent-kafka` package. Run the following commands:

```shell-session
$ python3 -m venv venv
$ source venv/bin/activate
$ pip3 install confluent-kafka
```
:::

:::warning
Make sure your prompt contains the `(venv)` message, as the following example:
```shell-session
(venv) student@cc-lab:~$
```
The `confluent-kafka` package is available only in the virtual environment, not on the machine.
:::

### Task 1

Follow `TODO1` comments and let some events to be produced. What is the result in each consumer?

<details>
<summary><b>Read me after</b></summary>
Each consumer will get all the events. Sometimes this is what we want, but sometimes this behaviour can lead to duplicating the actions
</details>

### Task 2

Follow `TODO2` comments and let some events to be produces. What is the result in each consumer?

<details>
<summary><b>Read me after</b></summary>
As we can see, grouping multiple consumers under the same ID means that we will not consume the same event twice.

**Kafka** has an internal routing system based on partitions and the number of consumers in a consumer group. In this case, we can have maximum 3 active consumers because we have 3 partitions. The rest of the consumers will be on hold and will run only if active consumers stop for any reason. 
</details>

### Task 3

Follow `TODO3` comments and let some events to be produces. What is the result in each consumer?

<details>
<summary><b>Read me after</b></summary>
Up until this moment, we sent events that had a value, but without a key.
When we send an event with a key, **Kafka** makes a hash of the key and assigns it to a partition. From that moment, all the events containing that key hash will be routed to the same partition.
</details>