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
    - `categories` is a list of categories (use their `name` trait, not the `display_name`)
  - `template.json`: is the template file.

## Categories

Categories are contained in `categories.yaml`.

Here is an example category:

```
- name: get-started
  display_name: "Get Started"
  description: "Simple applications to show case core Magalix features"
  icon_url: "https://raw.githubusercontent.com/MagalixTechnologies/templates/master/category_icons/magalix-logo.png"
```

- `name`:
    - This is what you need to put in `categories` in the templates.
    - is required
    - must be unique
    - must satisfy this regexp: `^[a-zA-Z0-9]([-a-zA-Z0-9]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([-a-zA-Z0-9]*[a-zA-Z0-9])?)*$` (no spaces, ...)
    - length: 1-256 chars
- `display_name`:
    - This is the name that will be used for listing the category in the frontend.
    - is required
    - must match this regexp: `^[-a-zA-Z0-9_., '()]{0,}$`
    - length: 1-1024 chars
- `description`:
    - Description of the category
    - not required
    - must match this regexp: `^[-a-zA-Z0-9_., '()]{0,}$`
    - length: 0-1024 chars
- `icon_url`:
    - Is the URL to the icon file (png, or jpeg)
    - Must be included in the PR in the `category_icons` folder, named as the category `name` (exception is in case it uses `magalix-logo.png`).
