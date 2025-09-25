## 🚀 Getting Started with Your GitHub + Codespaces + Salesforce Dev Environment

### 1. Create a New GitHub Repository

1. Go to https://github.com/USERNAME and click **Repositories**.
2. Click the green **New** button.
3. Configure the repository:
   - **Owner**: Select yourself.
   - **Repository Name**: Choose a name.
   - **Visibility**: Select **Private**.
   - **Initialize with README**: ✅ Turn **On**.
4. Click **Create Repository**.

---

### 2. Clone the Repository Locally

1. Click the green **Code** button.
2. Go to the **Local** tab.
3. Clone the repository to your local machine.
4. Open **Visual Studio Code (VSCode)**.
5. Go to `File > Open Folder` and select the cloned folder.
6. Copy the required files (from the provided ZIP) into the GitHub folder.
7. Open the **Source Control** panel in VSCode to confirm new files appear.
8. **Commit and Sync** the changes to GitHub.

---

### 3. Launch GitHub Codespaces

1. Go back to https://github.com/USERNAME.
2. Open the repository and go to the **Code** tab.
3. Click the **Codespaces** tab.
4. Click **Create codespace on main/develop**.
5. Wait for the cloud-based VSCode environment to finish setting up.

---

### 4. Install Extensions and Configure Environment

#### 🛠 Fix Apex Errors

1. Go to `File > Preferences > Settings`.
2. Search for **Apex**.
3. Scroll to `Salesforcedx-vscode-apex > Java:Home`.
4. Set the path to:
   ```
   /usr/lib/jvm/zulu21-ca-amd64
   ```
5. Close the settings tab.

#### 🛠 Terminal Setup

- If the terminal doesn't open:
  - Click the **hamburger menu > Terminal > New Terminal**.

#### 🛠 Install Salesforce Code Analyzer

```bash
sf plugins install code-analyzer
```

#### 🛠 Install Extensions

- Open the **Extensions Marketplace** (5th icon from the top).
- Install:
  - **Salesforce Extension Pack**
  - **Apex PMD**

#### 🛠 Install GitHub CLI

```bash
sudo apt update && sudo apt install gh -y
```

#### ✅ Verify Installations

```bash
gh --version
npm --version
python --version
sf --version
```

---

### 5. Connect to a Salesforce Org

1. Open the **Command Palette** (`Ctrl+Shift+P`).
2. Run:
   ```
   SFDX: Authorize an Org
   ```
3. Choose org type (Production/Sandbox).
4. Provide an alias.
5. A browser tab will open for login and authorization.

