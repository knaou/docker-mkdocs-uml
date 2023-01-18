FROM mcr.microsoft.com/playwright:v1.29.0-focal

WORKDIR /work
RUN npm install playwright @playwright/test
CMD ./node_modules/.bin/playwright test
