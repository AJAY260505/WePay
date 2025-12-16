
# WePay

WePay is a modern, open-source expense sharing application inspired by Splitwise.  
It helps groups track shared expenses, balances, and reimbursements in a simple and transparent way — without ads or paywalls.

You can use the hosted version or deploy your own instance to keep full control of your data.

**Live Demo:** https://wepay.vercel.app  
**Maintained by:** https://github.com/AJAY260505

---

## 🚀 Features

- Create groups and share them with friends
- Add expenses with descriptions
- Automatic group balance calculation
- Create reimbursement (settlement) expenses
- Progressive Web App (PWA)
- Select all / deselect all participants
- Uneven expense splitting
- Mark groups as favorites
- Identify yourself when opening a group
- Expense categories
- Search expenses within a group
- Upload and attach images to expenses
- Create expenses by scanning receipts

---

## 🔮 Planned Features

- Recurring expenses
- Import expenses from Splitwise

---

## 🧱 Tech Stack

- **Next.js** – Web framework
- **Tailwind CSS** – Styling
- **shadcn/ui** – UI components
- **Prisma** – Database ORM
- **PostgreSQL** – Database
- **Vercel** – Hosting

---

## 📦 Deployment

### One-click Deploy (Vercel)

Deploy your own instance instantly using Vercel:

[![Deploy with Vercel](https://vercel.com/button)](
https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2FWePay-app%2FWePay&project-name=my-WePay-instance&repository-name=my-WePay-instance&stores=%5B%7B%22type%22%3A%22postgres%22%7D%5D&
)

---

## 🛠 Run Locally

1. Clone the repository
   ```bash
   git clone https://github.com/AJAY260505/WePay.git
   cd WePay
````

2. Start a PostgreSQL server

   ```bash
   ./scripts/start-local-db.sh
   ```

3. Create environment variables

   ```bash
   cp .env.example .env
   ```

4. Install dependencies

   ```bash
   npm install
   ```

5. Start the development server

   ```bash
   npm run dev
   ```

The app will be available at **[http://localhost:3000](http://localhost:3000)**

---

## 🐳 Run with Docker

1. Build the Docker image

   ```bash
   npm run build-image
   ```

2. Create container environment file

   ```bash
   cp container.env.example container.env
   ```

3. Start containers

   ```bash
   npm run start-container
   ```

---

## 🩺 Health Check

* `GET /api/health` or `/api/health/readiness`
  → Checks application and database readiness

* `GET /api/health/liveness`
  → Checks if the application is running

---

## ⚙️ Optional Features

### 📸 Expense Image Uploads

Enable uploading images to expenses using S3-compatible storage.

```env
NEXT_PUBLIC_ENABLE_EXPENSE_DOCUMENTS=true
S3_UPLOAD_KEY=XXXXXXXX
S3_UPLOAD_SECRET=XXXXXXXX
S3_UPLOAD_BUCKET=your-bucket-name
S3_UPLOAD_REGION=us-east-1
```

Custom endpoint (optional):

```env
S3_UPLOAD_ENDPOINT=http://localhost:9000
```

---

### 🧾 Create Expense from Receipt

Automatically extract expense details from receipt images using OpenAI Vision.

```env
NEXT_PUBLIC_ENABLE_RECEIPT_EXTRACT=true
OPENAI_API_KEY=your_openai_api_key
```

> Requires expense image uploads to be enabled.

---

### 🏷 Auto-detect Expense Category

Automatically deduce expense categories using AI.

```env
NEXT_PUBLIC_ENABLE_CATEGORY_EXTRACT=true
OPENAI_API_KEY=your_openai_api_key
```

---

## 🌍 Translations

Translations are community-driven and managed via Weblate.
Contributions for new languages or improvements are welcome.

---

## 🤝 Contributing

Contributions are welcome!
Feel free to open issues or submit pull requests.

---

## 📄 License

MIT License — see the [LICENSE](./LICENSE) file.

```

---

