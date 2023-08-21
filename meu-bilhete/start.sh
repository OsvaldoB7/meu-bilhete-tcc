#!/bin/sh

restart_db() {

echo "Dropping database..."
rake db:drop

echo "Creating database..."
rake db:create

echo "Migrating database..."
rake db:migrate

echo "migrating seed data..."
rails db:seed

echo "Database reset complete!"

}
