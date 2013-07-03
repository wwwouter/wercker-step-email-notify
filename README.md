email-notify
===========================

Send an email message


Example
--------

Add EMAIL_PASSWORD as deploy target or application environment variable.

```
    - wouter/email-notify:
        from: alerts@company.com
        to: admin@company.com
        subject: $WERCKER_APPLICATION_OWNER_NAME/$WERCKER_APPLICATION_NAME build by $WERCKER_STARTED_BY finished
        username: username
        password: $EMAIL_PASSWORD
        host: smtp.gmail.com:587

```