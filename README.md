# templates

### Submission of new templates

PRs for new or existing templates are welcome!

A new teplate needs to contain the following files:
  - `icon.png` or `icon.jpg`: this will be the icon of the template
  - `meta.yaml`: contains the meta of the template.
    - Example:
      ```
      name: "guestbook"
      description: "The application consists of a web front-end, Redis master for storage, and replicated set of Redis slaves."
      categories:
        - "category-name"
      type: application
      version: 0.1
      ```
    - The `name` in `meta.yaml` must be same as the folder name.
  - `template.json`: is the template file.
