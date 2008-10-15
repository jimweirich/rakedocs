#!/usr/bin/env ruby

def code(code_dir, code_file, options={})
  title = code_file
  if options[:title]
    title = options[:title]
    options.delete(:title)
  end

  options[:lang] ||= 'ruby'
  options[:line_numbers] ||= 'inline'
  options[:bold_every]  ||= 5
  opts = options.collect { |key,value| "#{key}=\"#{value}\"" }.join(' ')

  code = open("#{code_dir}/#{code_file}") { |f| f.read }

  result = "\n\n*#{title}*\n"
  result << "<notextile>\n"
  result << "<coderay #{opts}>\n"
  result << code
  result << "\n</coderay>\n"
  result << "</notextile>\n"
end
