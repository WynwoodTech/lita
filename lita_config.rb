config_params = YAML.load_file('./config/config.yml').inject({}) do | hash, (key,value) |
  hash[key.intern] = value
  hash
end

Lita.configure do |config|
 config.robot.name = "Marvin"
 config.robot.log_level = :info
 config.robot.admins  = config_params[:SLACK_ADMIN_KEYS]
 config.robot.adapter = :slack
 config.adapters.slack.token = config_params[:SLACK_API_KEY]
 config.handlers.custom_meme.command_only = false
end
