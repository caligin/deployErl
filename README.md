# deployErl

This is actually a bad idea.

I started in order to solve the problem of generating relups to deploy easily the new version to prod server, then decided that the first step was the capability to deploy a first release to start with.

Then ended up solving the run-as-unprivileged-user problem.

Then realized that generating relup tarballs and actually deploying to prod are two completely different issues that require different tooling, even if they both are required for the ultimate goal of one-click|one-command deployments.

*meaning, this repo will not be developed further until I have a clearer idea of what's needed.*