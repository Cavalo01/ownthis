#!/bin/bash
empresa=$(whois "$@" | grep -oP '(?<=owner: ).*')
pessoa=$(whois "$@" | grep -oP '(?<=person: ).*')
email=$(whois "$@" | grep -oP '(?<=e-mail: ).*')
echo "A empresa proprietária do site é a $empresa."
echo "A pessoa proprietária do site é $pessoa."
echo "O email do(a) proprietário(a) do site é $email"
