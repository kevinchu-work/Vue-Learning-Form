# ------------------------------------------------------------
# run --------------------------------------------------------
# ------------------------------------------------------------
# docker run 
#            --rm
#            -it or -d
#            -p 80:80
#            -a STDERR
#            --ip 192.168.0.123
#            --cpus=0.5          # Container is guaranteed at most a half of the CPUs
#                                # equivalent of --cpu-quota="50000"
#            --cpuset-cpus=0-3   # CPU first to 4th CPU or Core
#            --cpuset-cpus=0,3   # using the 1st & 4th CPU or Core at 100%
#            -m 256M
#            -gpus device=0,2
#            -gpus all

# docker build github.com/creack/docker-firefox
# docker build -f ctx/Dockerfile http://server/ctx.tar.gz



# ------------------------------------------------------------
# Dockerfile -------------------------------------------------
# ------------------------------------------------------------
FROM node
ENV NODE_ENV development

# Necessary modules
# RUN apk add git
# RUN yarn install
# RUN yarn install --production --silent

# Mount/Copy Project asset
VOLUME /project
WORKDIR /project
# RUN yarn global add @vue/cli @vue/cli-service serve
# RUN yarn global add @vue/cli serve
COPY "package.json" .
RUN yarn install
# COPY . .

# Starting
EXPOSE 3000