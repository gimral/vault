export VAULT_ADDR=http://192.168.99.172:31049
export VAULT_TKN=$(cat cluster-keys.json | jq -r ".root_token") 
export VAULT_TOKEN=root

echo "VAULT_TKN: ${VAULT_TKN}"
echo "VAULT_ADDR: ${VAULT_ADDR}"

curl -i \
-H "X-Vault-Token: ${VAULT_TKN}" \
-H "Host: vault.paas2.com" \
-H "Content-Type : application/json" \
--request LIST \
${VAULT_ADDR}/v1/auth/token/accessors
