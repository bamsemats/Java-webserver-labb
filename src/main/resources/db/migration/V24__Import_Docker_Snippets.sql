-- V24__Import_Docker_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Docker: Multi-stage Build (Java)', 'Efficient production image creation.', 'FROM maven:3.8-openjdk-17 AS build
COPY . .
RUN mvn clean package

FROM openjdk:17-slim
COPY --from=build /target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Compose PostgreSQL Setup', 'Defining a database service.', 'services:
  db:
    image: postgres:15
    environment:
      POSTGRES_PASSWORD: pass
    ports:
      - "5432:5432"', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Build and Tag Image', 'CLI command for building.', 'docker build -t my-app:v1 .', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Run Container with Volume', 'Persisting data on host.', 'docker run -d -v /host/path:/container/path my-image', 'Docker', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: List Running Containers', 'Monitoring active instances.', 'docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Names}}"', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Inspect Container IP', 'Retrieving network details.', 'docker inspect -f ''{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'' container_name', 'Docker', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Compose Healthcheck', 'Ensuring service readiness.', 'healthcheck:
  test: ["CMD", "curl", "-f", "http://localhost:8080/health"]
  interval: 30s
  retries: 3', 'Docker', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Remove Unused Data', 'Cleaning up the environment.', 'docker system prune -a --volumes', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Network Creation', 'Defining custom bridge networks.', 'docker network create my-bridge-net', 'Docker', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Entrypoint vs CMD', 'Understanding execution priorities.', 'ENTRYPOINT ["executable", "param1"]
CMD ["param2"] # Executable will be "executable param1 param2"', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Copy File to Container', 'Moving host files into running instances.', 'docker cp config.json my-container:/app/config.json', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Resource Limits', 'Constraining CPU and Memory.', 'docker run --cpus="1.5" --memory="512m" my-image', 'Docker', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Compose Restart Policy', 'Defining container auto-restart.', 'restart: always # or on-failure, unless-stopped', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Show Container Logs', 'Real-time output monitoring.', 'docker logs -f --tail 100 my-container', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Build Cache Invalidation', 'Using build args to bypass cache.', 'ARG CACHEBUST=1
RUN git clone ...', 'Docker', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Execute Command in Container', 'Interactive shell access.', 'docker exec -it my-container /bin/bash', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Dockerignore Example', 'Excluding files from build context.', '.git
node_modules
target/', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Export and Import Image', 'Sharing images via files.', 'docker save my-image > my-image.tar
docker load < my-image.tar', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Port Forwarding', 'Mapping host to container ports.', 'ports:
  - "80:8080" # host:container', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: Labeling Metadata', 'Adding descriptive labels.', 'LABEL version="1.0" maintainer="mats"', 'Docker', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
