class EntryDecorator < Draper::Decorator
  delegate_all

  def entry_table_talk_status
    object.entry_table_talk ? "参加" : "不参加"
  end
end
