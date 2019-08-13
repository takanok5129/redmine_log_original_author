module RedmineLogOriginalAuthor
  class Hooks < Redmine::Hook::Listener
    def controller_issues_new_after_save(context={})
      issue = context[:issue]
      return unless issue.present?

      current_user = User.current
      author = issue.author
      return if current_user.nil? || author.nil?

      # record the original author in the log if the author of the issue is different from current_user
      if current_user.id != author.id
        Rails.logger.info "The author of the issue (id = #{issue.id}) is different from current_user " \
          "(current_user is '#{current_user.name}' (id = #{current_user.id}), the author is '#{author.name}' (id = #{author.id}))"
      end
    end
  end
end
