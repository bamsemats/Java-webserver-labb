package gg.jte.generated.ondemand.error;
@SuppressWarnings("unchecked")
public final class Jte500Generated {
	public static final String JTE_NAME = "error/500.jte";
	public static final int[] JTE_LINE_INFO = {0,0,0,0,0,2,2,2,2,7,7,7,13,13,13,14,14,14,0,0,0,0};
	public static void render(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, String errorMessage) {
		jteOutput.writeContent("\r\n");
		gg.jte.generated.ondemand.layout.JtemainGenerated.render(jteOutput, jteHtmlInterceptor, "Error", new gg.jte.html.HtmlContent() {
			public void writeTo(gg.jte.html.HtmlTemplateOutput jteOutput) {
				jteOutput.writeContent("\r\n    <div class=\"error-page-container\">\r\n        <h1 class=\"error-code text-danger\">500</h1>\r\n        <p class=\"lead\">Something went wrong on our end.</p>\r\n        <div class=\"alert alert-danger d-inline-block mt-3\">\r\n            ");
				jteOutput.setContext("div", null);
				jteOutput.writeUserContent(errorMessage);
				jteOutput.writeContent("\r\n        </div>\r\n        <div>\r\n            <a href=\"/snippets\" class=\"btn-base btn-primary-action mt-3\">Back to All Snippets</a>\r\n        </div>\r\n    </div>\r\n");
			}
		});
		jteOutput.writeContent("\r\n");
	}
	public static void renderMap(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, java.util.Map<String, Object> params) {
		String errorMessage = (String)params.get("errorMessage");
		render(jteOutput, jteHtmlInterceptor, errorMessage);
	}
}
