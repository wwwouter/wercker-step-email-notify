
if [ ! -n "$WERCKER_EMAIL_NOTIFY_FROM" ]; then
  error 'Please specify from property'
  exit 1
fi

if [ ! -n "$WERCKER_EMAIL_NOTIFY_TO" ]; then
  error 'Please specify to property'
  exit 1
fi

if [ ! -n "$WERCKER_EMAIL_NOTIFY_SUBJECT" ]; then
  error 'Please specify subject property'
  exit 1
fi

if [ ! -n "$WERCKER_EMAIL_NOTIFY_USERNAME" ]; then
  error 'Please specify username property'
  exit 1
fi
if [ ! -n "$WERCKER_EMAIL_NOTIFY_PASSWORD" ]; then
  error 'Please specify password property'
  exit 1
fi
if [ ! -n "$WERCKER_EMAIL_NOTIFY_HOST" ]; then
  error 'Please specify host property'
  exit 1
fi

python "$WERCKER_STEP_ROOT/main.py" "$WERCKER_EMAIL_NOTIFY_FROM" "$WERCKER_EMAIL_NOTIFY_TO" "$WERCKER_EMAIL_NOTIFY_SUBJECT" "$WERCKER_EMAIL_NOTIFY_BODY" "$WERCKER_EMAIL_NOTIFY_USERNAME" "$WERCKER_EMAIL_NOTIFY_PASSWORD" "$WERCKER_EMAIL_NOTIFY_HOST"