# Use a Node.js base image
FROM node:latest

# Create the testapp directory inside the container
RUN mkdir -p /testapp

# Copy the local testapp directory into the container's /testapp directory
COPY . /testapp

# Set the working directory to /testapp
WORKDIR /testapp

# Run the server.js file when the container starts
CMD ["node", "server.js"]

# FROM node

# # WORKDIR /testapp
# ENV MONGO_DB_USERNAME=admin \
#     MONGO_DB_PWD=qwerty

# RUN mkdir -p testapp

# COPY ./testapp/testapp

# CMD ["node", "server.js"]


# # Use an official Node.js runtime as a parent image
# FROM node:latest

# # Set the working directory in the container
# WORKDIR /testapp

# # Copy the local testapp directory to the container's /testapp directory
# COPY ./testapp /testapp

# # Install any needed packages specified in package.json
# RUN npm install

# # Make port 5050 available to the world outside this container
# EXPOSE 5050

# # Define environment variable
# ENV NODE_ENV=production

# # Run server.js when the container launches
# CMD ["node", "server.js"]


