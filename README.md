# Open24 Branching, PR & Conflicts sandbox

In this exercise, we will be setting up a SQLite database, creating branches, and adding data to the database through SQL scripts.

Follow the steps below to complete each task.

## Setup

- Create a `db.sqlite` file inside the `db` directory.
  - `touch db/db.sqlite`
- Change the permissions of `set-up-db.sh` so it is executable.
- `sudo chmod +x set-up-db.sh`

## Task 1 - Demo

- Ensure you are on the main branch:

  - `git status`
  - `git checkout main`

- Make sure your branch is up to date:

  - `git pull origin main`

- Create a branch called `add-user-your-name`:

  - `git checkout -b add-user-your-name`

- Inside the `db/seed` folder, create a `your-name.sql` file.

- Add one insert statement to add yourself to the `users` table.

- Run `./set-up-db.sh` and ensure the data has been added.

- Add, commit, and push your branch.

```bash
  git add .
  git commit -m "Completed Task 1"
  git push origin YOUR-BRANCH-NAME
```

- Open a Pull Request (PR).
  - GitHub Repo -> Pull Requests -> New Pull Request -> Your Branch -> Leave a Title & Comment -> Open

---

## Task 2 - Practice Solo

- Ensure you are on the main branch.

- Make sure your branch is up to date.

- Create a branch called `movies-your-name`.

- Inside the `db/seed/your-name.sql` file, add five insert statements to add movies to the `movies` table.

- Run `./set-up-db.sh` and ensure the data has been added.

- Add, commit, and push your branch.

- Open a PR.

- We will review as a group.

- Review your PR partners PR.

---

## Task 3 - Conflicts

- Ensure you are on the main branch.

- Make sure your branch is up to date.

- Create a branch called `favorites-your-name`.

  - Do not create a new file; it is important that you are all working on the same file.

- Run `./set-up-db.sh`.

- In the `favorites` file, add insert statements to add three entries into the `favorites` table. You will need the IDs of the user and the movie, so it is important to run the previous step.

- Run `./set-up-db.sh` and ensure the data has been added.

- Add, commit, and push your branch.

- Open a PR.

- We will review as a group.

- You will need to Resolve some Merge Conflicts.

---

## Task 4 - Reviewing

- Review the PR created and assigned to you.
- Test branch on your local machine.
- Provide feedback on the PR.

---
