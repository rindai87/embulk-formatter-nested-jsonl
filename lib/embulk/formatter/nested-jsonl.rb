module Embulk
  module Formatter

    class NestedJsonl < FormatterPlugin
      require 'json'

      Plugin.register_formatter("nested-jsonl", self)

      NEWLINES = {
        'CRLF' => "\r\n",
        'CR'   => "\r",
        'LF'   => "\n",
      }

      def self.transaction(config, schema, &control)
        # configuration code:
        task = {
          'encoding' => config.param('encoding', :string, default: 'UTF-8'),
          'newline' => config.param('newline', :string, default: 'LF'),
        }

        yield(task)
      end

      def init
        # initialization code:
        @encoding = task["encoding"]
        @newline = NEWLINES[task["newline"]]

        # your data
        @current_file == nil
        @current_file_size = 0
      end

      def close
      end

      def add(page)
        # output code:
        page.each do |record|
          if @current_file == nil || @current_file_size > 32*1024
            @current_file = file_output.next_file
            @current_file_size = 0
          end
          datum = {}
          @schema.each do |col|
            begin
              datum[col.name] = JSON.load(record[col.index])
            rescue
              datum[col.name] = record[col.index]
            end
          end
          @current_file.write "#{JSON.dump(datum)}#{@newline}".encode(@encoding)
        end
      end

      def finish
        file_output.finish
      end
    end

  end
end
