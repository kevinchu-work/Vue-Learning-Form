# sfc

## Start the Project
#### by Docker

```bash
$ yarn docker
```

Wait for the setup, it take awhile!

#### via VSCode

Requirement: VSCode Docker plugins
please refer to [VSCode - Developing inside a Container](https://code.visualstudio.com/docs/remote/containers)
1. Build & start Docker by [Open an existing folder in a container](https://code.visualstudio.com/docs/remote/containers#_quick-start-open-an-existing-folder-in-a-container)
2. Choice `Node.js 14`
3. Connect to Docker CLI

   - by command `docker exec -it [docker name/ID] /bin/bash;`
   - by Clicking the 'CLI' button on Docker Desktop App

4. Run Vue CLI service by "yarn serve"
   (Project folder should be `/workspaces/sfc` )
5. Open http://127.0.0.1:3000

-- EOF --
