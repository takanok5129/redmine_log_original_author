# Redmine Log Original Author

This is a Redmine plugin to record the original author of an issue in the server log.

(This plugin does not provide permissions to change issue's author.)

When creating an issue, current_user is recorded if current_user is different from the issue author.

The logged text will be like below.
```
The author of the issue (id = 10) is different from current_user (current_user is 'test' (id = 2), the author is 'admin' (id = 1))
```
