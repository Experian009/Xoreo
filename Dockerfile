FROM ghcr.io/xtls/xray-core:latest

# Копируем конфиг
COPY config.json /etc/xray/config.json

# Устанавливаем права на чтение для конфига
RUN chmod 644 /etc/xray/config.json

# Переключаемся на непривилегированного пользователя (требование Choreo/Checkov)
USER 10014

CMD ["xray", "-config", "/etc/xray/config.json"]
