# Deploy a Ruby on Rails App on Section Tutorial
This repo holds the sample code for usage with the tutorials hosted on Section.io's documentations.

Refer to [Tutorials/RubyonRails](https://www.section.io/docs/tutorials/frameworks/rubyonrails/) for detailed instructions on deploying to Section.

# Build and push rubyonrails image
```
USER=section
IMAGENAME=my-rubyonrails-app
TAG=0.0.1

docker build . --tag ghcr.io/$USER/$IMAGENAME:$TAG
docker push ghcr.io/$USER/$IMAGENAME:$TAG
```
