module ApplicationHelper
  def nav_link(text, link)
    recognized = Rails.application.routes.recognize_path(link)
    if recognized[:controller] == params[:controller]
        content_tag(:li, :class => "active") do
            link_to(text, link)
        end
    else
        content_tag(:li) do
            link_to(text, link)
        end
    end
  end

  def gender_icon(player)
    icon_class = player.gender == 'M' ? 'mars' : 'venus'
    icon_colour = player.gender == 'M' ? '#4563FF' : '#FF8DF4'
    fa_icon icon_class, style: "color: #{icon_colour}"
  end

  def grade_badge(grade, options = {})
    class_names = ['label', 'label-success']
    class_names << options[:class]
    content_tag(:span, grade.name, class: class_names.join(" "), style: "background-color: #{grade.colour}")
  end

  def glyphicon(icon_class)
    content_tag(:i, '', class: "glyphicon glyphicon-#{icon_class}")
  end

  def bool_yesno(bool)
    content_tag(:span, (bool ? 'Yes' : 'No'), style: "color: #{bool ? '#007919' : '#830000'}")
  end

end
