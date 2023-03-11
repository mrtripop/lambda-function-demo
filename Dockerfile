FROM public.ecr.aws/lambda/nodejs:18
# Copy function code
COPY package.json ${LAMBDA_TASK_ROOT}/package.json
COPY handler.js ${LAMBDA_TASK_ROOT}/handler.js
WORKDIR ${LAMBDA_TASK_ROOT}
RUN npm install
# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "handler.handler" ]
