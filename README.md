# Terraform Cloudflare Worker Demo

Este proyecto despliega una aplicación NodeJS en Cloudflare Workers usando Terraform Cloud y GitHub Actions.

## 📁 Estructura

```
terraform-cloudflare-worker/
├── Infrastructure/
    ├── main.tf
    ├── provider.tf
    ├── variables.tf
    ├── outputs.tf
├── app/
    ├── worker.tf
├── .github/
    ├── workflows/
        ├── deploy.yml
        ├── destroy.yml
```

## 🔐 Secrets requeridos en GitHub

Configurar:

- TF_API_TOKEN (Terraform Cloud)
- CLOUDFLARE_API_TOKEN
- CLOUDFLARE_ACCOUNT_ID

## 🚀 Deploy

Ejecutar manualmente:

```
Actions → Deploy Worker → Run workflow
```

## 💥 Destroy

Ejecutar manualmente:

```
Actions → Destroy Worker → Run workflow
```

## 🌐 Endpoints

- `/`
- `/time`

## 🧠 Bonus (arquitectura correcta)

```
Developer → GitHub → GitHub Actions
                    ↓
             Terraform Cloud (state)
                    ↓
            Cloudflare Workers
                    ↓
                Internet
```