# BP-QA-Challenge

This is QA Challenge project.You can install needed dependencies as the following instruction to see result.

## Installation

Please install python version 10+ then install these libraries before running robot script.

```bash
  pip install robotframework-seleniumlibrary
  pip install robotframework-debuglibrary
  pip install robotframework-pabot
```


## Run robot script commands

Please feel free to run robot script as your needed. I provide different commands so that you can decide how you want to execute the test script.

1.Run all test cases sequentially.

```bash
  robot -d logs .
```

2.Run a specific test case by tag name sequentially.

```bash
  robot -d logs -i ${tag} .
  > robot -d logs -i TC01 .
```

3.Run test cases in parallel.

```bash
  pabot processes ${thread_number} -d logs  .
  > pabot processes 2 -d logs  .
```

3.Run specific test cases by tag name in parallel.

```bash
  pabot processes ${thread_number} -d logs -i ${tag_name_1} -i {tag_name_2} .
  > pabot processes ${thread_number} -d logs -i TC01 -i TC02 .
```