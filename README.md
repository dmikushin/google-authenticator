# Google Authenticator container

A Docker container with [authenticator CLI](https://pypi.org/project/authenticator/) to stop being dependent on a cell phone.

## Is it secure or not?

In principle, the main purpose of 2FA is to have the second factor of authentication on a *different* device. It does not imply this device must necessarily be a cell phone. You can put 2FA on another thrusted computer, preferably phisically located in a different city or country. Such strategy could actually make your 2FA more secure than the phone, which could be broken or stolen.

## No warranty

The security risks are your own. Be wise and do your own research.

## Usage

Start the container:

```
docker build -t google-authenticator .
docker-compose up -d
```

Inside the container:

```
authenticator add Google:youremail@gmail.com
```

You will need to hand in two things:

1. A passphrase, which will be used to encrypt the token in the container
2. A shared key, which connects your token and the authorization authority (e.g. Google) into a thrust ring. The shared key could be extracted from the authenticator app, using [a nice tool](https://github.com/scito/extract_otp_secret_keys).

Once the token is added, it could be used normally:

```
authenticator generate
```

## TODO

Web interface

