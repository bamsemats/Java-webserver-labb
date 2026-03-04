package gg.jte.generated.ondemand.snippets;
import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.springframework.data.domain.Page;
import java.util.List;
@SuppressWarnings("unchecked")
public final class JtelistGenerated {
	public static final String JTE_NAME = "snippets/list.jte";
	public static final int[] JTE_LINE_INFO = {0,0,1,2,4,4,4,4,8,8,8,8,16,16,16,16,16,16,16,16,16,18,18,20,20,25,25,29,29,30,30,34,34,34,35,35,35,38,38,38,39,39,39,40,40,40,43,43,43,45,45,45,45,46,46,46,46,53,53,54,54,57,57,60,60,60,60,61,61,61,61,61,61,61,64,64,65,65,65,65,66,66,66,66,66,66,66,66,66,66,68,68,70,70,70,70,71,71,71,71,71,71,71,75,75,76,76,76,77,77,77,4,5,6,6,6,6};
	public static void render(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, List<SnippetDTO> snippets, Page<SnippetDTO> snippetsPage, String search) {
		jteOutput.writeContent("\r\n");
		gg.jte.generated.ondemand.layout.JtemainGenerated.render(jteOutput, jteHtmlInterceptor, "All Snippets", new gg.jte.html.HtmlContent() {
			public void writeTo(gg.jte.html.HtmlTemplateOutput jteOutput) {
				jteOutput.writeContent("\r\n    <div class=\"d-flex justify-content-between align-items-center mb-4\">\r\n        <h1>Code Snippets</h1>\r\n        <a href=\"/snippets/new\" class=\"btn btn-primary\">Add New Snippet</a>\r\n    </div>\r\n\r\n    <form action=\"/snippets\" method=\"get\" class=\"mb-4\">\r\n        <div class=\"input-group\">\r\n            <input type=\"text\" name=\"search\" class=\"form-control\" placeholder=\"Search by title...\"");
				var __jte_html_attribute_0 = search == null ? "" : search;
				if (gg.jte.runtime.TemplateUtils.isAttributeRendered(__jte_html_attribute_0)) {
					jteOutput.writeContent(" value=\"");
					jteOutput.setContext("input", "value");
					jteOutput.writeUserContent(__jte_html_attribute_0);
					jteOutput.setContext("input", null);
					jteOutput.writeContent("\"");
				}
				jteOutput.writeContent(" aria-label=\"Search\">\r\n            <button class=\"btn btn-outline-secondary\" type=\"submit\">Search</button>\r\n            ");
				if (search != null && !search.isEmpty()) {
					jteOutput.writeContent("\r\n                <a href=\"/snippets\" class=\"btn btn-outline-danger\">Clear</a>\r\n            ");
				}
				jteOutput.writeContent("\r\n        </div>\r\n    </form>\r\n\r\n    <div class=\"row\">\r\n        ");
				if (snippets.isEmpty()) {
					jteOutput.writeContent("\r\n            <div class=\"col-12\">\r\n                <div class=\"alert alert-info\">No snippets found. <a href=\"/snippets/new\">Create one?</a></div>\r\n            </div>\r\n        ");
				} else {
					jteOutput.writeContent("\r\n            ");
					for (SnippetDTO snippet : snippets) {
						jteOutput.writeContent("\r\n                <div class=\"col-md-6 mb-4\">\r\n                    <div class=\"card snippet-card\">\r\n                        <div class=\"snippet-card-header d-flex justify-content-between align-items-center\">\r\n                            <h5 class=\"snippet-card-title\">");
						jteOutput.setContext("h5", null);
						jteOutput.writeUserContent(snippet.getTitle());
						jteOutput.writeContent("</h5>\r\n                            <span class=\"badge badge-lang\">");
						jteOutput.setContext("span", null);
						jteOutput.writeUserContent(snippet.getLanguage());
						jteOutput.writeContent("</span>\r\n                        </div>\r\n                        <div class=\"card-body\">\r\n                            <p><span class=\"badge badge-cat\">");
						jteOutput.setContext("span", null);
						jteOutput.writeUserContent(snippet.getCategory());
						jteOutput.writeContent("</span></p>\r\n                            <p class=\"snippet-description\">");
						jteOutput.setContext("p", null);
						jteOutput.writeUserContent(snippet.getDescription());
						jteOutput.writeContent("</p>\r\n                            <pre class=\"snippet-code-block\"><code>");
						jteOutput.setContext("code", null);
						jteOutput.writeUserContent(snippet.getContent());
						jteOutput.writeContent("</code></pre>\r\n                        </div>\r\n                        <div class=\"card-footer d-flex justify-content-between align-items-center\">\r\n                            <small class=\"text-muted\">Created: ");
						jteOutput.setContext("small", null);
						jteOutput.writeUserContent(snippet.getCreatedAt().toLocalDate().toString());
						jteOutput.writeContent("</small>\r\n                            <div class=\"btn-group\">\r\n                                <a href=\"/snippets/");
						jteOutput.setContext("a", "href");
						jteOutput.writeUserContent(snippet.getId());
						jteOutput.setContext("a", null);
						jteOutput.writeContent("/edit\" class=\"btn btn-sm btn-outline-primary\">Edit</a>\r\n                                <form action=\"/snippets/");
						jteOutput.setContext("form", "action");
						jteOutput.writeUserContent(snippet.getId());
						jteOutput.setContext("form", null);
						jteOutput.writeContent("/delete\" method=\"post\" class=\"d-inline\">\r\n                                    <button type=\"submit\" class=\"btn btn-sm btn-outline-danger\" onclick=\"return confirm('Are you sure?')\">Delete</button>\r\n                                </form>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            ");
					}
					jteOutput.writeContent("\r\n        ");
				}
				jteOutput.writeContent("\r\n    </div>\r\n\r\n    ");
				if (snippetsPage.getTotalPages() > 1) {
					jteOutput.writeContent("\r\n        <nav aria-label=\"Page navigation\" class=\"pagination-nav\">\r\n            <ul class=\"pagination\">\r\n                <li class=\"page-item ");
					jteOutput.setContext("li", "class");
					jteOutput.writeUserContent(!snippetsPage.hasPrevious() ? "disabled" : "");
					jteOutput.setContext("li", null);
					jteOutput.writeContent("\">\r\n                    <a class=\"page-link\" href=\"?page=");
					jteOutput.setContext("a", "href");
					jteOutput.writeUserContent(snippetsPage.getNumber() - 1);
					jteOutput.setContext("a", null);
					jteOutput.setContext("a", "href");
					jteOutput.writeUserContent(search != null ? "&search=" + search : "");
					jteOutput.setContext("a", null);
					jteOutput.writeContent("\">Previous</a>\r\n                </li>\r\n                \r\n                ");
					for (int i = 0; i < snippetsPage.getTotalPages(); i++) {
						jteOutput.writeContent("\r\n                    <li class=\"page-item ");
						jteOutput.setContext("li", "class");
						jteOutput.writeUserContent(snippetsPage.getNumber() == i ? "active" : "");
						jteOutput.setContext("li", null);
						jteOutput.writeContent("\">\r\n                        <a class=\"page-link\" href=\"?page=");
						jteOutput.setContext("a", "href");
						jteOutput.writeUserContent(i);
						jteOutput.setContext("a", null);
						jteOutput.setContext("a", "href");
						jteOutput.writeUserContent(search != null ? "&search=" + search : "");
						jteOutput.setContext("a", null);
						jteOutput.writeContent("\">");
						jteOutput.setContext("a", null);
						jteOutput.writeUserContent(i + 1);
						jteOutput.writeContent("</a>\r\n                    </li>\r\n                ");
					}
					jteOutput.writeContent("\r\n\r\n                <li class=\"page-item ");
					jteOutput.setContext("li", "class");
					jteOutput.writeUserContent(!snippetsPage.hasNext() ? "disabled" : "");
					jteOutput.setContext("li", null);
					jteOutput.writeContent("\">\r\n                    <a class=\"page-link\" href=\"?page=");
					jteOutput.setContext("a", "href");
					jteOutput.writeUserContent(snippetsPage.getNumber() + 1);
					jteOutput.setContext("a", null);
					jteOutput.setContext("a", "href");
					jteOutput.writeUserContent(search != null ? "&search=" + search : "");
					jteOutput.setContext("a", null);
					jteOutput.writeContent("\">Next</a>\r\n                </li>\r\n            </ul>\r\n        </nav>\r\n    ");
				}
				jteOutput.writeContent("\r\n");
			}
		});
		jteOutput.writeContent("\r\n");
	}
	public static void renderMap(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, java.util.Map<String, Object> params) {
		List<SnippetDTO> snippets = (List<SnippetDTO>)params.get("snippets");
		Page<SnippetDTO> snippetsPage = (Page<SnippetDTO>)params.get("snippetsPage");
		String search = (String)params.get("search");
		render(jteOutput, jteHtmlInterceptor, snippets, snippetsPage, search);
	}
}
