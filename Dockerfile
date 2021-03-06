FROM node

# GET FROM SCRIPT THE ARGUMENT
ARG RAMLPATH

# ADD TO THE IMAGE THE 
ADD $RAMLPATH $RAMLPATH

# INSTALL DEPENDENCIES 
RUN npm install -g serve
RUN npm install -g raml2html 

# GENERATE DOCS
RUN raml2html $RAMLPATH > index.html

EXPOSE 5000
CMD ["serve", "."]