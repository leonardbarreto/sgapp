module AgendaProfissionalsHelper
	def render_haml(code)
      engine = Haml::Engine.new(code)
      engine.render
    end
end
