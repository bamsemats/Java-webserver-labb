package gg.jte.generated.ondemand.snippets;
import org.example.projektarbetewebserver.dto.UpdateSnippetDTO;
import org.springframework.validation.BindingResult;
@SuppressWarnings("unchecked")
public final class JteeditGenerated {
	public static final String JTE_NAME = "snippets/edit.jte";
	public static final int[] JTE_LINE_INFO = {0,0,1,3,3,3,3,7,7,7,7,15,15,15,15,18,18,18,18,18,18,18,18,18,19,19,19,19,20,20,21,21,21,22,22,28,28,28,28,28,28,28,29,29,30,30,30,31,31,36,36,36,36,37,37,37,37,37,38,38,38,38,38,39,39,39,39,39,40,40,40,40,40,41,41,41,41,41,42,42,42,42,42,44,44,45,45,45,46,46,51,51,51,51,52,52,52,52,52,53,53,53,53,53,54,54,54,54,54,55,55,55,55,55,57,57,58,58,58,59,59,65,65,65,65,65,65,65,66,66,67,67,67,68,68,80,80,80,81,81,81,3,4,5,5,5,5};
	public static void render(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, UpdateSnippetDTO updateSnippetDTO, BindingResult bindingResult, Long snippetId) {
		jteOutput.writeContent("\r\n");
		gg.jte.generated.ondemand.layout.JtemainGenerated.render(jteOutput, jteHtmlInterceptor, "Edit Snippet", new gg.jte.html.HtmlContent() {
			public void writeTo(gg.jte.html.HtmlTemplateOutput jteOutput) {
				jteOutput.writeContent("\r\n    <div class=\"row justify-content-center\">\r\n        <div class=\"col-md-8\">\r\n            <div class=\"card shadow-sm\">\r\n                <div class=\"card-header bg-warning text-dark\">\r\n                    <h2 class=\"h5 mb-0\">Edit Snippet</h2>\r\n                </div>\r\n                <div class=\"card-body\">\r\n                    <form action=\"/snippets/");
				jteOutput.setContext("form", "action");
				jteOutput.writeUserContent(snippetId);
				jteOutput.setContext("form", null);
				jteOutput.writeContent("\" method=\"post\">\r\n                        <div class=\"mb-3\">\r\n                            <label for=\"title\" class=\"form-label\">Title</label>\r\n                            <input type=\"text\" id=\"title\" name=\"title\"");
				var __jte_html_attribute_0 = updateSnippetDTO.getTitle();
				if (gg.jte.runtime.TemplateUtils.isAttributeRendered(__jte_html_attribute_0)) {
					jteOutput.writeContent(" value=\"");
					jteOutput.setContext("input", "value");
					jteOutput.writeUserContent(__jte_html_attribute_0);
					jteOutput.setContext("input", null);
					jteOutput.writeContent("\"");
				}
				jteOutput.writeContent(" \r\n                                   class=\"form-control ");
				jteOutput.setContext("input", "class");
				jteOutput.writeUserContent(bindingResult != null && bindingResult.hasFieldErrors("title") ? "is-invalid" : "");
				jteOutput.setContext("input", null);
				jteOutput.writeContent("\" required>\r\n                            ");
				if (bindingResult != null && bindingResult.hasFieldErrors("title")) {
					jteOutput.writeContent("\r\n                                <div class=\"invalid-feedback\">");
					jteOutput.setContext("div", null);
					jteOutput.writeUserContent(bindingResult.getFieldError("title").getDefaultMessage());
					jteOutput.writeContent("</div>\r\n                            ");
				}
				jteOutput.writeContent("\r\n                        </div>\r\n\r\n                        <div class=\"mb-3\">\r\n                            <label for=\"description\" class=\"form-label\">Description</label>\r\n                            <textarea id=\"description\" name=\"description\" \r\n                                      class=\"form-control ");
				jteOutput.setContext("textarea", "class");
				jteOutput.writeUserContent(bindingResult != null && bindingResult.hasFieldErrors("description") ? "is-invalid" : "");
				jteOutput.setContext("textarea", null);
				jteOutput.writeContent("\" rows=\"2\" required>");
				jteOutput.setContext("textarea", null);
				jteOutput.writeUserContent(updateSnippetDTO.getDescription());
				jteOutput.writeContent("</textarea>\r\n                            ");
				if (bindingResult != null && bindingResult.hasFieldErrors("description")) {
					jteOutput.writeContent("\r\n                                <div class=\"invalid-feedback\">");
					jteOutput.setContext("div", null);
					jteOutput.writeUserContent(bindingResult.getFieldError("description").getDefaultMessage());
					jteOutput.writeContent("</div>\r\n                            ");
				}
				jteOutput.writeContent("\r\n                        </div>\r\n\r\n                        <div class=\"mb-3\">\r\n                            <label for=\"language\" class=\"form-label\">Language</label>\r\n                            <select id=\"language\" name=\"language\" class=\"form-select ");
				jteOutput.setContext("select", "class");
				jteOutput.writeUserContent(bindingResult != null && bindingResult.hasFieldErrors("language") ? "is-invalid" : "");
				jteOutput.setContext("select", null);
				jteOutput.writeContent("\" required>\r\n                                <option value=\"Java\"");
				var __jte_html_attribute_1 = "Java".equals(updateSnippetDTO.getLanguage());
				if (__jte_html_attribute_1) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Java</option>\r\n                                <option value=\"Python\"");
				var __jte_html_attribute_2 = "Python".equals(updateSnippetDTO.getLanguage());
				if (__jte_html_attribute_2) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Python</option>\r\n                                <option value=\"JavaScript\"");
				var __jte_html_attribute_3 = "JavaScript".equals(updateSnippetDTO.getLanguage());
				if (__jte_html_attribute_3) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">JavaScript</option>\r\n                                <option value=\"CSS\"");
				var __jte_html_attribute_4 = "CSS".equals(updateSnippetDTO.getLanguage());
				if (__jte_html_attribute_4) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">CSS</option>\r\n                                <option value=\"SQL\"");
				var __jte_html_attribute_5 = "SQL".equals(updateSnippetDTO.getLanguage());
				if (__jte_html_attribute_5) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">SQL</option>\r\n                                <option value=\"Other\"");
				var __jte_html_attribute_6 = "Other".equals(updateSnippetDTO.getLanguage());
				if (__jte_html_attribute_6) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Other</option>\r\n                            </select>\r\n                            ");
				if (bindingResult != null && bindingResult.hasFieldErrors("language")) {
					jteOutput.writeContent("\r\n                                <div class=\"invalid-feedback\">");
					jteOutput.setContext("div", null);
					jteOutput.writeUserContent(bindingResult.getFieldError("language").getDefaultMessage());
					jteOutput.writeContent("</div>\r\n                            ");
				}
				jteOutput.writeContent("\r\n                        </div>\r\n\r\n                        <div class=\"mb-3\">\r\n                            <label for=\"category\" class=\"form-label\">Category</label>\r\n                            <select id=\"category\" name=\"category\" class=\"form-select ");
				jteOutput.setContext("select", "class");
				jteOutput.writeUserContent(bindingResult != null && bindingResult.hasFieldErrors("category") ? "is-invalid" : "");
				jteOutput.setContext("select", null);
				jteOutput.writeContent("\" required>\r\n                                <option value=\"Backend\"");
				var __jte_html_attribute_7 = "Backend".equals(updateSnippetDTO.getCategory());
				if (__jte_html_attribute_7) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Backend</option>\r\n                                <option value=\"Frontend\"");
				var __jte_html_attribute_8 = "Frontend".equals(updateSnippetDTO.getCategory());
				if (__jte_html_attribute_8) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Frontend</option>\r\n                                <option value=\"DevOps\"");
				var __jte_html_attribute_9 = "DevOps".equals(updateSnippetDTO.getCategory());
				if (__jte_html_attribute_9) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">DevOps</option>\r\n                                <option value=\"Utility\"");
				var __jte_html_attribute_10 = "Utility".equals(updateSnippetDTO.getCategory());
				if (__jte_html_attribute_10) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Utility</option>\r\n                            </select>\r\n                            ");
				if (bindingResult != null && bindingResult.hasFieldErrors("category")) {
					jteOutput.writeContent("\r\n                                <div class=\"invalid-feedback\">");
					jteOutput.setContext("div", null);
					jteOutput.writeUserContent(bindingResult.getFieldError("category").getDefaultMessage());
					jteOutput.writeContent("</div>\r\n                            ");
				}
				jteOutput.writeContent("\r\n                        </div>\r\n\r\n                        <div class=\"mb-3\">\r\n                            <label for=\"content\" class=\"form-label\">Code Content</label>\r\n                            <textarea id=\"content\" name=\"content\" \r\n                                      class=\"form-control font-monospace ");
				jteOutput.setContext("textarea", "class");
				jteOutput.writeUserContent(bindingResult != null && bindingResult.hasFieldErrors("content") ? "is-invalid" : "");
				jteOutput.setContext("textarea", null);
				jteOutput.writeContent("\" rows=\"10\" required>");
				jteOutput.setContext("textarea", null);
				jteOutput.writeUserContent(updateSnippetDTO.getContent());
				jteOutput.writeContent("</textarea>\r\n                            ");
				if (bindingResult != null && bindingResult.hasFieldErrors("content")) {
					jteOutput.writeContent("\r\n                                <div class=\"invalid-feedback\">");
					jteOutput.setContext("div", null);
					jteOutput.writeUserContent(bindingResult.getFieldError("content").getDefaultMessage());
					jteOutput.writeContent("</div>\r\n                            ");
				}
				jteOutput.writeContent("\r\n                        </div>\r\n\r\n                        <div class=\"d-flex justify-content-between\">\r\n                            <a href=\"/snippets\" class=\"btn btn-outline-secondary\">Cancel</a>\r\n                            <button type=\"submit\" class=\"btn btn-warning\">Update Snippet</button>\r\n                        </div>\r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n");
			}
		});
		jteOutput.writeContent("\r\n");
	}
	public static void renderMap(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, java.util.Map<String, Object> params) {
		UpdateSnippetDTO updateSnippetDTO = (UpdateSnippetDTO)params.get("updateSnippetDTO");
		BindingResult bindingResult = (BindingResult)params.get("bindingResult");
		Long snippetId = (Long)params.get("snippetId");
		render(jteOutput, jteHtmlInterceptor, updateSnippetDTO, bindingResult, snippetId);
	}
}
