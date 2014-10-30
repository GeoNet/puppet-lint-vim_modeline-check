PuppetLint.new_check(:vim_modeline) do
  def check
    last_line = manifest_lines.last
    unless last_line.start_with?('# vim:')
      notify :warning, {
        :message => 'expected vim modeline as last line of file',
        :line    => manifest_lines.length,
        :column  => last_line.length,
      }
    end
  end
end

