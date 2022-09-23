# Google Authenticator container

A Docker container with [authenticator CLI](https://pypi.org/project/authenticator/) to stop being dependent on a cell phone.

## Is it secure or not?

In principle, the main purpose of 2FA is to have the second factor of authentication on a *different* device. It does not imply the cell phone is necessarily need to be this device. You can put 2FA on another thrusted computer, preferably phisically located at a different city or country. Such strategy could actually make your 2FA more secure than the phone, which could be broken or stolen.

## No warranty

The security risks are your own. Be wise and do your own research.

## Usage

```
docker build -t google-authenticator .
docker-compose up -d
```
