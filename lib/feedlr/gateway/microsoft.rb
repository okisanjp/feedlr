module Feedlr
  module Gateway
    # Microsoft API
    #
    # @see http://developer.feedly.com/v3/microsoft/
    #
    # The following API actions do not have corresponding methods in
    # this module:
    #
    #   * Link Microsoft Account
    module Microsoft
      # Unlink Windows Live account
      #
      # @see http://developer.feedly.com/v3/microsoft/#unlink-windows-live-account
      # @return [Feedlr::Success]
      def unlink_microsoft
        request_with_object(method: :delete,
                            path: '/microsoft/liveAuth')
      end

      # Add an article in OneNote
      #
      # @see http://developer.feedly.com/v3/microsoft/#add-an-article-in-onenote
      # @param entry_id [String]
      # @return [Feedlr::Success]
      def add_to_onenote(entry_id)
        request_with_object(method: :post,
                            path: '/microsoft/oneNoteAdd',
                            params: { entryId: entry_id })
      end
    end
  end
end
