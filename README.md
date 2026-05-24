# DockerLabs

CMD vs ENTRYPOINT

Feature: Purpose
CMD: Provides default arguments or commands for the container.
ENTRYPOINT: Defines the fixed command and main executable that always runs.

Feature: Override
CMD: Easily overridden by appending a new command at the end of the docker run command.
ENTRYPOINT: Cannot be overridden directly by arguments; requires the explicit use of the --entrypoint flag.

Feature: Use case
CMD: Used for default behavior or shell access that users can change easily.
ENTRYPOINT: Used for commands that must always execute, turning the container into an executable binary.

Feature: Together
CMD: When used together, CMD supplies default arguments to the ENTRYPOINT command.
ENTRYPOINT: Acts as the base executable that receives arguments from CMD.

Example:
ENTRYPOINT ["python", "app.py"]
CMD ["--port", "8080"]

Running docker run myimage --port 5000 runs python app.py --port 5000

COPY vs ADD

Feature: Purpose
COPY: Copies files and directories from the host machine to the image filesystem.
ADD: Same as COPY but includes extra features like remote URLs and auto-extraction.

Feature: Remote URLs
COPY: Not supported. Only works with local files in the build context.
ADD: Supported. Can fetch and download files directly from a remote URL.

Feature: Auto-extract
COPY: No auto-extraction. Copies compressed archives as they are.
ADD: Supported. Automatically extracts local tar, tar.gz, and zip files into the destination.

Feature: Best practice
COPY: Strongly preferred for simple file copies due to its clarity.
ADD: Use only when you specifically need the URL download or auto-extract features.

Feature: Transparency
COPY: More explicit, predictable, and clean.
ADD: Can have surprising or unintended behaviors due to automated features.

Rule of thumb: Always use COPY unless you specifically need the extra features of ADD.
