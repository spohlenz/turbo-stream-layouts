class TestController < ApplicationController
  def index
  end

  def template
    # Renders template with application layout
  end

  def template_layout_true
    # Renders template with application layout
    render layout: true
  end

  def template_custom_layout
    # Renders template with custom layout
    render layout: "custom"
  end

  def inline
    # Renders with no layout
    render html: "Hello from inline template"
  end

  def inline_layout_true
    # Renders with application layout
    render html: "Hello from inline template", layout: true
  end

  def inline_custom_layout
    # Renders with custom layout
    render html: "Hello from inline template", layout: "custom"
  end

  def turbo_template
    # Renders template with application layout
  end

  def turbo_template_layout_true
    # Renders template with application layout
    render layout: true
  end

  def turbo_inline
    # Renders with no layout
    render turbo_stream: turbo_stream.append("container") { "Hello from inline Turbo Stream" }
  end

  def turbo_inline_layout_true
    # Renders with no layout (!)
    render turbo_stream: turbo_stream.append("container") { "Hello from inline Turbo Stream (layout: true)" }, layout: true
  end

  def turbo_inline_explicit_layout
    # Renders with no layout (!)
    render turbo_stream: turbo_stream.append("container") { "Hello from inline Turbo Stream (explicit layout)" }, layout: "application"
  end
end
