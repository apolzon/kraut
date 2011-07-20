module Cucumber
  module Formatter
    class Kraut < Html
      # All commented code was ripped from parent Html class for reference
      #require 'erb'
      #require 'cucumber/formatter/ordered_xml_markup'
      #require 'cucumber/formatter/duration'
      #require 'cucumber/formatter/io'

      #def initialize(step_mother, path_or_io, options)
        #@io = ensure_io(path_or_io, "html")
        #@step_mother = step_mother
        #@options = options
        #@buffer = {}
        #@builder = create_builder(@io)
        #@feature_number = 0
        #@scenario_number = 0
        #@step_number = 0
        #@header_red = nil
        #@delayed_messages = []
        #@img_id = 0
      #end

      def embed(src, mime_type, label)
        #case(mime_type)
        #when /^image\/(png|gif|jpg|jpeg)/
          #embed_image(src, label)
        #end
      end

      def embed_image(src, label)
        #id = "img_#{@img_id}"
        #@img_id += 1
        #@builder.span(:class => 'embed') do |pre|
          #pre << %{<a href="" onclick="img=document.getElementById('#{id}'); img.style.display = (img.style.display == 'none' ? 'block' : 'none');return false">#{label}</a><br>&nbsp;
          #<img id="#{id}" style="display: none" src="#{src}"/>}
        #end
      end


      def before_features(features)
        #@step_count = get_step_count(features)

        ## <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
        #@builder.declare!(
          #:DOCTYPE,
          #:html, 
          #:PUBLIC, 
          #'-//W3C//DTD XHTML 1.0 Strict//EN',
          #'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'
        #)

        #@builder << '<html xmlns ="http://www.w3.org/1999/xhtml">'
          #@builder.head do
          #@builder.meta(:content => 'text/html;charset=utf-8')
          #@builder.title 'Cucumber'
          #inline_css
          #inline_js
        #end
        #@builder << '<body>'
        #@builder << "<!-- Step count #{@step_count}-->"
        #@builder << '<div class="cucumber">'
        #@builder.div(:id => 'cucumber-header') do
          #@builder.div(:id => 'label') do
            #@builder.h1('Cucumber Features')
          #end
          #@builder.div(:id => 'summary') do
            #@builder.p('',:id => 'totals')
            #@builder.p('',:id => 'duration')
            #@builder.div(:id => 'expand-collapse') do
              #@builder.p('Expand All', :id => 'expander')
              #@builder.p('Collapse All', :id => 'collapser')
            #end
          #end
        #end
      end

      def after_features(features)
        #print_stats(features)
        #@builder << '</div>'
        #@builder << '</body>'
        #@builder << '</html>'
      end

      def before_feature(feature)
        #@exceptions = []
        #@builder << '<div class="feature">'
      end

      def after_feature(feature)
        #@builder << '</div>'
      end
  
      def before_comment(comment)
        #@builder << '<pre class="comment">'
      end

      def after_comment(comment)
        #@builder << '</pre>'
      end
  
      def comment_line(comment_line)
        #@builder.text!(comment_line)
        #@builder.br
      end
  
      def after_tags(tags)
        #@tag_spacer = nil
      end
  
      def tag_name(tag_name)
        #@builder.text!(@tag_spacer) if @tag_spacer
        #@tag_spacer = ' '
        #@builder.span(tag_name, :class => 'tag')
      end
  
      def feature_name(keyword, name)
        #lines = name.split(/\r?\n/)
        #return if lines.empty?
        #@builder.h2 do |h2|
          #@builder.span(keyword + ': ' + lines[0], :class => 'val')
        #end
        #@builder.p(:class => 'narrative') do
          #lines[1..-1].each do |line|
            #@builder.text!(line.strip)
            #@builder.br
          #end
        #end
      end
  
      def before_background(background)
        #@in_background = true
        #@builder << '<div class="background">'
      end
  
      def after_background(background)
        #@in_background = nil
        #@builder << '</div>'
      end
  
      def background_name(keyword, name, file_colon_line, source_indent)
        #@listing_background = true
        #@builder.h3 do |h3|
          #@builder.span(keyword, :class => 'keyword')
          #@builder.text!(' ')
          #@builder.span(name, :class => 'val')
        #end
      end

      def before_feature_element(feature_element)
        #@scenario_number+=1
        #@scenario_red = false
        #css_class = {
          #Ast::Scenario        => 'scenario',
          #Ast::ScenarioOutline => 'scenario outline'
        #}[feature_element.class]      
        #@builder << "<div class='#{css_class}'>"
      end

      def after_feature_element(feature_element)
        #@builder << '</div>'
        #@open_step_list = true
      end

      def scenario_name(keyword, name, file_colon_line, source_indent)
        #@builder.span(:class => 'scenario_file') do
          #@builder << file_colon_line
        #end
        #@listing_background = false
        #@builder.h3(:id => "scenario_#{@scenario_number}") do
          #@builder.span(keyword + ':', :class => 'keyword')
          #@builder.text!(' ')
          #@builder.span(name, :class => 'val')
        #end
      end
  
      def before_outline_table(outline_table)
        #@outline_row = 0
        #@builder << '<table>'
      end
  
      def after_outline_table(outline_table)
        #@builder << '</table>'
        #@outline_row = nil
      end
      
      def before_examples(examples)
         #@builder << '<div class="examples">'
      end
      
      def after_examples(examples)
        #@builder << '</div>'
      end

      def examples_name(keyword, name)
        #@builder.h4 do
          #@builder.span(keyword, :class => 'keyword')
          #@builder.text!(' ')
          #@builder.span(name, :class => 'val')
        #end
      end
  
      def before_steps(steps)
        #@builder << '<ol>'
      end
  
      def after_steps(steps)
        #@builder << '</ol>'
      end

      def before_step(step)
        #@step_id = step.dom_id
        #@step_number += 1
        #@step = step
      end

      def after_step(step)
        #move_progress
      end

      def before_step_result(keyword, step_match, multiline_arg, status, exception, source_indent, background)
        #@step_match = step_match
        #@hide_this_step = false
        #if exception
          #if @exceptions.include?(exception)
            #@hide_this_step = true
            #return
          #end
          #@exceptions << exception
        #end
        #if status != :failed && @in_background ^ background
          #@hide_this_step = true
          #return
        #end
        #@status = status
        #return if @hide_this_step
        #set_scenario_color(status)      
        #@builder << "<li id='#{@step_id}' class='step #{status}'>"            
      end

      def after_step_result(keyword, step_match, multiline_arg, status, exception, source_indent, background)
        #return if @hide_this_step
        ## print snippet for undefined steps
        #if status == :undefined
          #step_multiline_class = @step.multiline_arg ? @step.multiline_arg.class : nil
          #@builder.pre do |pre|
            #pre << @step_mother.snippet_text(@step.actual_keyword,step_match.instance_variable_get("@name") || '',step_multiline_class)
          #end
        #end
        #@builder << '</li>'
        #print_messages
      end

      def step_name(keyword, step_match, status, source_indent, background)
        #@step_matches ||= []
        #background_in_scenario = background && !@listing_background
        #@skip_step = @step_matches.index(step_match) || background_in_scenario
        #@step_matches << step_match

        #unless @skip_step
          #build_step(keyword, step_match, status)
        #end
      end

      def exception(exception, status)
        #build_exception_detail(exception)
      end

      def extra_failure_content(file_colon_line)
        #@snippet_extractor ||= SnippetExtractor.new
        #"<pre class=\"ruby\"><code>#{@snippet_extractor.snippet(file_colon_line)}</code></pre>"
      end

      def before_multiline_arg(multiline_arg)
        #return if @hide_this_step || @skip_step
        #if Ast::Table === multiline_arg
          #@builder << '<table>'
        #end
      end
  
      def after_multiline_arg(multiline_arg)
        #return if @hide_this_step || @skip_step
        #if Ast::Table === multiline_arg
          #@builder << '</table>'
        #end
      end

      def doc_string(string)
        #return if @hide_this_step
        #@builder.pre(:class => 'val') do |pre|
          #@builder << h(string.gsub("\n", '&#x000A;'))
        #end
      end
  
  
      def before_table_row(table_row)
        #@row_id = table_row.dom_id
        #@col_index = 0
        #return if @hide_this_step
        #@builder << "<tr class='step' id='#{@row_id}'>"
      end
  
      def after_table_row(table_row)
        #return if @hide_this_step
        #print_table_row_messages
        #@builder << '</tr>'
        #if table_row.exception
          #@builder.tr do
            #@builder.td(:colspan => @col_index.to_s, :class => 'failed') do
              #@builder.pre do |pre|
                #pre << format_exception(table_row.exception)
              #end
            #end
          #end
          #set_scenario_color_failed
        #end
        #if @outline_row
          #@outline_row += 1
        #end
        #@step_number += 1
        #move_progress
      end

      def table_cell_value(value, status)
        #return if @hide_this_step
        
        #@cell_type = @outline_row == 0 ? :th : :td
        #attributes = {:id => "#{@row_id}_#{@col_index}", :class => 'step'}
        #attributes[:class] += " #{status}" if status
        #build_cell(@cell_type, value, attributes)
        #set_scenario_color(status)
        #@col_index += 1
      end

      def puts(message)
        #@delayed_messages << message
        ##@builder.pre(message, :class => 'message')
      end
      
      def print_messages
        #return if @delayed_messages.empty?
        
        ##@builder.ol do
          #@delayed_messages.each do |ann|
            #@builder.li(:class => 'step message') do
              #@builder << ann
            #end
          #end
        ##end
        #empty_messages
      end
      
      def print_table_row_messages
        #return if @delayed_messages.empty?
        
        #@builder.td(:class => 'message') do
          #@builder << @delayed_messages.join(", ")
        #end
        #empty_messages
      end
      
      def empty_messages
        #@delayed_messages = []
      end
    end
  end
end
