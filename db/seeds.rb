# this will import the sql files into the tables.
unless Rails.env.production?
  connection = ActiveRecord::Base.connection
  connection.tables.each do |table|
    connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"
  end
  sql_paths = %w[db/country_temps-dump.sql db/state_temps-dump.sql db/trump_tweets-dump.sql db/update_data/update_sentiment.sql]
  csv_paths = %w[db/update_data/create_daily_stats.csv db/update_data/update_daily_stats_with_spx.csv db/update_data/update_daily_stats_with_spx_normalized.csv]

  ActiveRecord::Base.transaction do
    csv_paths.each do |path|
      File.open(path, 'r') do |file|
        file.each_line do |line|
          connection.execute(line)
        end
      end
    end
  end

  ActiveRecord::Base.transaction do
    sql_paths.each do |path|
      file = File.read(path)
      connection.execute(file)
    end
  end
end
