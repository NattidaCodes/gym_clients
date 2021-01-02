Coach has many Clients

Clients belongs to Coach

# Create
## New (displays the form to make the new thing)
   - get /coaches/new
   - new.erb

## Create (processes the form and actually makes and save the thing)
   - post /coaches
   - no view, redirects to show or index for that thing
   - Model.create


# Read
## Index (all things)
   - get /coaches
   - index.erb
   - Model.all

## Show (detailed things)
   - get /coaches/:id
   - show.erb
    Model.find_by(id: params[:id])


# Update
## Edit (like new, display the form to change one thing)
   - get /coaches/:id/edit
   - edit.erb
   - Model.find_by(id: params[:id])

## Update (like create, processes the form and makes the change)
   - patch /coaches/:id
   - no view, redirect to show
   - instance = Model.find_by(id: params[:id])
   - instance.update(params[:key])


# Delete
## Destroy (process the form and destroys the thing)
   - delete /coaches/:id
   - no view, redirect to index 
   - instance = Model.find_by(id: params[:id])
   - instance.destroy
    
