require "active_record/connection_adapters/mysql2_adapter"
require "activerecord-mysql2-retry-ext/version"

class ActiveRecord::ConnectionAdapters::Mysql2Adapter
  # +exec_query_with_retry+ tries the attempted query and retries it up to 5 times
  # before raising an ActiveRecord::StatementInvalid exception.
  def exec_query_with_retry(*args)
    retry_count = 0
    begin
      exec_query_without_retry *args
    rescue ActiveRecord::StatementInvalid => ex
      retry_count +=1
      retry if retry_count < 5
      raise ex
    end
  end
  alias_method :exec_query_without_retry, :exec_query
  alias_method :exec_query, :exec_query_with_retry
end
