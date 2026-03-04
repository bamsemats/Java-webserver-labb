package gg.jte.generated.ondemand.layout;
import gg.jte.Content;
@SuppressWarnings("unchecked")
public final class JtemainGenerated {
	public static final String JTE_NAME = "layout/main.jte";
	public static final int[] JTE_LINE_INFO = {0,0,1,1,1,1,9,9,9,9,31,31,31,42,42,42,1,2,2,2,2};
	public static void render(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, String title, Content content) {
		jteOutput.writeContent("\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>");
		jteOutput.setContext("title", null);
		jteOutput.writeUserContent(title);
		jteOutput.writeContent(" - Snippet Library</title>\r\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css\">\r\n    <link rel=\"stylesheet\" href=\"/css/style.css\">\r\n</head>\r\n<body>\r\n    <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark app-nav\">\r\n        <div class=\"container\">\r\n            <a class=\"navbar-brand\" href=\"/snippets\">Snippet Library</a>\r\n            <div class=\"collapse navbar-collapse\">\r\n                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"/snippets\">All Snippets</a>\r\n                    </li>\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"/snippets/new\">New Snippet</a>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </nav>\r\n\r\n    <main class=\"container\">\r\n        ");
		jteOutput.setContext("main", null);
		jteOutput.writeUserContent(content);
		jteOutput.writeContent("\r\n    </main>\r\n\r\n    <footer class=\"container app-footer\">\r\n        <p>&copy; 2024 Snippet Library</p>\r\n    </footer>\r\n\r\n    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js\"></script>\r\n    <script src=\"/js/main.js\"></script>\r\n</body>\r\n</html>\r\n");
	}
	public static void renderMap(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, java.util.Map<String, Object> params) {
		String title = (String)params.get("title");
		Content content = (Content)params.get("content");
		render(jteOutput, jteHtmlInterceptor, title, content);
	}
}
