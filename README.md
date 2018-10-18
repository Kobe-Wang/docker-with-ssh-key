# docker-with-ssh-key

```bash
docker build --no-cache -t <name>:<TAG> --build-arg SSH_KEY="$(cat ~/.ssh/id_rsa)" .
```
