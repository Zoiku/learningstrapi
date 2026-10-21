# Learning Strapi — Content API

A Strapi 4.25.23 CMS project with content types for blogs, FAQs, gallery highlights, team members, programs, and statistics. Blog content includes a slug, author, description, cover image, block content, and a media gallery.

## Requirements

The package declares Node.js `>=18.0.0 <=20.x.x` and npm `>=6.0.0`. SQLite is the default database and `better-sqlite3` is included.

## Local development

```sh
git clone https://github.com/Zoiku/learningstrapi.git
cd learningstrapi
npm install
```

Copy `.env.example` to a private local `.env` file. Replace its placeholder application keys, token salts, and JWT secrets with your own generated values. The server reads `HOST` (default `0.0.0.0`), `PORT` (default `1337`), and an optional `URL`.

```sh
npm run develop
```

Open `http://localhost:1337/admin` to configure a local administrator, edit content, and set API permissions.

The repository contains an existing `.tmp/data.db`. Back it up before modifying it, or explicitly configure `DATABASE_FILENAME` to use a separate development database. A clone may therefore contain existing data rather than a blank CMS.

## Configuration

- `config/database.js`: database selection and connection settings.
- `config/server.js`: host, port, public URL, and app keys.
- `config/admin.js`: admin and token settings.
- `config/plugins.js`: sendmail email provider with placeholder sender addresses.

The database config includes other client options, but their drivers are not declared in `package.json`; additional configuration and dependencies are required to switch away from SQLite. Email delivery also requires a working mail setup.

## Commands

- `npm run develop`: development mode with reload.
- `npm run build`: builds the administration interface.
- `npm start`: starts Strapi without development reload.

No test script is declared.

## Content and deployment

Content schemas, controllers, routes, and services live under `src/api/`. API availability depends on Strapi permissions and publication state.

For deployment, build the admin interface, provide environment settings, and persist the database and uploaded media. Verify content creation, publication, permissions, uploads, and email behavior with development data first.
