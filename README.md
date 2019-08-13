# Redmine Log Original Author

This is a Redmine plugin to record the original author of an issue in the server log.

(This plugin does not provide permissions to change issue author.)

When creating a new issue, the current user is recorded if the issue author is different from the current user.

The logged text will be like below.
```
The author of the issue (id = 10) is different from current_user (current_user is 'test' (id = 2), the author is 'admin' (id = 1))
```
