+++
title = """
Fix SSL Certificate Issues in Corporate Linux Environment.
"""

authors = [
  "Aaron RANDRETH"
]

date = "2025-07-25"

[extra]

type = "text"

+++

# Introduction 

While using a Virtual Machine (VM) on your company laptop, you might have encountered unexplained SSL certificate errors and big red warnings on your favorite browser inside this VM. If your network works perfectly fine outside your VM, then you might be missing the correct certificates.

```bash
[I] localhost@aaron ~ [60]> curl https://self-signed.badssl.com/
curl: (60) SSL certificate problem: self-signed certificate
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
```

<!--more-->

# Why this might be happening 

> If you want to directly go to the solution, skip this section and move on to the next.

When making an HTTPS request, the remote server will add a cryptographic signature to the data it is sending you, so that you can verify that it is free from any third-party tampering. To know that you are talking to the right server, and not just trusting any random signature, we rely on [Certificate Authorities](https://en.wikipedia.org/wiki/Certificate_authority) (CAs). They are the organisations that allow us to verify the identity of our correspondent.

Like many other companies, my company is using a VPN solution for security and logistics purposes. In my case, it was Global Protect from Palo Alto Networks.

This VPN is always on and configured to be used for every network connection. As a  consequence, it effectively performs a [Man-in-the-middle attack](https://en.wikipedia.org/wiki/Man-in-the-middle_attack) on every connection your computer makes. The gist of it is that the VPN will intercept all HTTPS connections and re-sign the HTTPS certificates with its own CA. This is a common corporate security practice, not malicious behavior. Your VM only trusts the standard public CAs, not your company's internal CA, so all your tools will realize that the signature is not the correct one for the URL you are trying to access.

To fix this, we need to add our company's CAs to our machine.
Other guides for this issue exist, but they assume you already have the certificates, or that you can easily get them from your IT department. My IT department however is pretty busy, and it's not the easiest to get a hold of them. I needed to find a solution that did not involve them at all.

# Brief overview 

My host Windows computer only had Microsoft Edge, and I am using Firefox on my guest Debian VM, so that's what I will be using in this tutorial. If you have any other setup, you can rely on this overview and adapt it to your setup.

To fix our certificate problem, we will extract a certificate bundle from our host machine, using a working browser. After extracting individual certificates from this bundle, we will install those certificates on our Debian machine.

We will also configure the browser on our guest system, as they sometimes ignore the system certificates.

# Getting and adding the certificates 

First, on your host machine:

1. **In Edge:** 
   - Go to `Settings > Privacy, search, and services > Security > Manage certificates`
   - Click `View imported certificates from Windows`
   - At the top of the `Trusted Certificates` category, click `Export` to export them all as a single .crt file

Now, in your guest machine:

2. This file contains several certificates, but the Debian certificate manager only handles one certificate per file. So we need to split the certificates.

```sh
csplit trusted_certs.crt \
    --elide-empty-files \
    --prefix='company-cert-' \
    --suffix-format='%02d.crt' \
    '/-----BEGIN CERTIFICATE-----/' '{*}'
```

3. We now need to move the certificates to the correct directory, and notify the manager:

```sh
sudo cp company-cert-*.crt /usr/local/share/ca-certificates/
sudo update-ca-certificates
```

You should see in the output all your certificates being added.

All new processes should now use those new certificates. You can verify this by opening a new terminal and launching:

```sh
wget --spider https://gitlab.freedesktop.org
```

4. (Optional) By default, Firefox and other browsers do not use the system certificates, so some websites may still not work.
    To fix that for Firefox, go to `Settings > Privacy & Security > View Certificates > Import`. And import the trusted_certs.crt certificate.

# Alternative Method 

If you only want to get the certificates for a specific website, you can visit it on a machine that is correctly set up, and check in your browser by which certificate it was issued. You can then copy this directly to the certificates folder on the other machine, and update the certs.
