PuppetLint.new_check(:vim_modeline) do
  def check
    last_line = manifest_lines.last
    line_num = manifest_lines.length

    # Account for empty last lines after a trailing newline
    unless last_line.length > 0
      last_line = manifest_lines.last(2)[0]
      line_num -= 1
    end

    unless last_line.start_with?('# vim:')
      notify :warning, {
        :message => 'expected vim modeline as last line of file',
        :line    => line_num,
        :column  => last_line.length,
      }
    end
  end
end

