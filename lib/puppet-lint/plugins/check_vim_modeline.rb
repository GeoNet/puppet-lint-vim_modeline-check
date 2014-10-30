PuppetLint.new_check(:vim_modeline) do
  def check
    if manifest_lines.length < 2 
      notify :warning, {
        :message => 'expected vim modeline at the end of the file',
        :line    => tokens.last.line,
        :column  => manifest_lines.last.length,
      }
    else
      last_real_line = manifest_lines[-2]
      unless last_real_line.start_with?('# vim:')
        notify :warning, {
          :message => 'expected vim modeline at the end of the file',
          :line    => (manifest_lines.length - 1),
          :column  => last_real_line.length,
        }
      end
    end
  end
end

