# Backup Bot with Telegram Alerts

Этот проект автоматизирует создание резервных копий и отправляет уведомления в Telegram.

## 🚀 Функции
- Создание бэкапа с датой в имени папки
- Уведомление о результате в Telegram
- Запуск в Docker-контейнере
- Автоматический запуск по расписанию (cron)

## 🛠️ Установка и запуск

### 1. Клонируйте репозиторий
```bash
git clone https://github.com/WhiteAlbumSH/devops-scripts.git
cd devops-scripts
2. Настройте токен Telegram
Отредактируйте my_backup.sh и укажите:

TOKEN — токен вашего бота (получите у @BotFather)

CHAT_ID — ваш ID в Telegram

3. Соберите Docker-образ
bash
docker build -t backup-bot .
4. Запустите контейнер
bash
docker run --rm --network host backup-bot
⏰ Автоматизация через cron
Добавьте в crontab -e:

bash
0 3 * * * /usr/bin/docker run --rm --network host backup-bot >> /home/devuser/backup.log 2>&1
📸 Пример вывода
В терминале: Backup completed. Files created: 5

В Telegram: ✅ Бэкап готов в 2025-07-01, создано файлов: 5

📄 Логирование
Все сообщения сохраняются в backup.log.

📜 Лицензия
MIT

text

---

## Шаг 3. Сохрани и закоммить

```bash
# Сохрани файл в nano (Ctrl+O, Enter, Ctrl+X)
