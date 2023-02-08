# Bazel Hello World Rule

Command to test the rule:
```
bazel build --define "time_of_day=morning" :create_greeting
```
Here the value for time_of_day variable will be used by the rule in the file name that it generates with the greetings text for the user.
