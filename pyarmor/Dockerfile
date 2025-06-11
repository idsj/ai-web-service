FROM python:3.9-slim

WORKDIR /app

# 安装系统依赖
RUN apt update && \
    apt install -y --no-install-recommends rsync && \
    rm -rf /var/lib/apt/lists/*

# 安装 PyArmor
RUN pip install --no-cache-dir pyarmor

CMD ["sh", "-c", "echo '请在 docker-compose.yml 中指定加密命令' && sleep 10"]