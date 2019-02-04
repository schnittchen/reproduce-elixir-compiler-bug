FROM elixir:1.8.1-slim

RUN useradd -m -u 1000 --no-log-init app-user
RUN mkdir -p /app && chown app-user:app-user /app
USER app-user
WORKDIR /app
RUN mix local.rebar --force
RUN mix local.hex --force

