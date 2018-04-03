Rails.application.routes.draw do

# => Create tasks:
    # => Empty form:
  get 'tasks/new/', to: 'tasks#new', as: 'new_task'
    # => Submit task:
  post 'tasks', to: 'tasks#create'

# => Read tasks
    # => Read all tasks:
  get 'tasks/', to: 'tasks#index'
    # => Read one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

# => Update tasks:
    # => Update one task:
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
    # => Empty our task:
  patch 'tasks/:id/', to: 'tasks#update'

# => Delete one task:
  delete 'tasks/:id/', to: 'tasks#destroy'

  root to: 'tasks#index'

end
