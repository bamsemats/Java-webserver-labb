package gg.jte.generated.ondemand.snippets;
import org.example.projektarbetewebserver.dto.CreateSnippetDTO;
import org.springframework.validation.BindingResult;
import java.util.Arrays;
import java.util.List;
@SuppressWarnings("unchecked")
public final class JtecreateGenerated {
	public static final String JTE_NAME = "snippets/create.jte";
	public static final int[] JTE_LINE_INFO = {0,0,1,2,3,5,5,5,5,8,8,8,9,9,11,11,11,22,22,22,22,22,22,22,22,22,23,23,23,23,24,24,25,25,25,26,26,32,32,32,32,32,32,32,33,33,34,34,34,35,35,40,40,40,40,42,42,42,42,42,43,43,43,43,43,44,44,44,44,44,45,45,45,45,45,46,46,46,46,46,47,47,47,47,47,51,51,51,51,51,51,51,51,51,54,54,55,55,55,56,56,61,61,61,61,63,63,63,63,63,64,64,64,64,64,65,65,65,65,65,66,66,66,66,66,68,68,69,69,69,70,70,76,76,76,76,76,76,76,77,77,78,78,78,79,79,91,91,91,92,92,92,5,6,6,6,6};
	public static void render(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, CreateSnippetDTO createSnippetDTO, BindingResult bindingResult) {
		jteOutput.writeContent("\r\n");
		List<String> stdLanguages = Arrays.asList("Java", "Python", "JavaScript", "CSS", "SQL");
		jteOutput.writeContent("\r\n");
		boolean isOther = createSnippetDTO.getLanguage() != null && !stdLanguages.contains(createSnippetDTO.getLanguage());
		jteOutput.writeContent("\r\n\r\n");
		gg.jte.generated.ondemand.layout.JtemainGenerated.render(jteOutput, jteHtmlInterceptor, "New Snippet", new gg.jte.html.HtmlContent() {
			public void writeTo(gg.jte.html.HtmlTemplateOutput jteOutput) {
				jteOutput.writeContent("\r\n    <div class=\"row justify-content-center\">\r\n        <div class=\"col-md-8\">\r\n            <div class=\"card shadow-sm\">\r\n                <div class=\"card-header bg-primary text-white\">\r\n                    <h2 class=\"h5 mb-0\">Create New Snippet</h2>\r\n                </div>\r\n                <div class=\"card-body\">\r\n                    <form action=\"/snippets\" method=\"post\">\r\n                        <div class=\"mb-3\">\r\n                            <label for=\"title\" class=\"form-label\">Title</label>\r\n                            <input type=\"text\" id=\"title\" name=\"title\"");
				var __jte_html_attribute_0 = createSnippetDTO.getTitle() == null ? "" : createSnippetDTO.getTitle();
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
				jteOutput.writeUserContent(createSnippetDTO.getDescription() == null ? "" : createSnippetDTO.getDescription());
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
				jteOutput.writeContent("\" required>\r\n                                <option value=\"\" selected disabled>Choose a language...</option>\r\n                                <option value=\"Java\"");
				var __jte_html_attribute_1 = "Java".equals(createSnippetDTO.getLanguage());
				if (__jte_html_attribute_1) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Java</option>\r\n                                <option value=\"Python\"");
				var __jte_html_attribute_2 = "Python".equals(createSnippetDTO.getLanguage());
				if (__jte_html_attribute_2) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Python</option>\r\n                                <option value=\"JavaScript\"");
				var __jte_html_attribute_3 = "JavaScript".equals(createSnippetDTO.getLanguage());
				if (__jte_html_attribute_3) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">JavaScript</option>\r\n                                <option value=\"CSS\"");
				var __jte_html_attribute_4 = "CSS".equals(createSnippetDTO.getLanguage());
				if (__jte_html_attribute_4) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">CSS</option>\r\n                                <option value=\"SQL\"");
				var __jte_html_attribute_5 = "SQL".equals(createSnippetDTO.getLanguage());
				if (__jte_html_attribute_5) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">SQL</option>\r\n                                <option value=\"Other\"");
				var __jte_html_attribute_6 = isOther;
				if (__jte_html_attribute_6) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Other</option>\r\n                            </select>\r\n                            \r\n                            <div id=\"customLanguageWrapper\" class=\"mt-2 d-none\">\r\n                                <input type=\"text\" id=\"customLanguage\" class=\"form-control\" placeholder=\"Specify language...\"");
				var __jte_html_attribute_7 = isOther ? createSnippetDTO.getLanguage() : "";
				if (gg.jte.runtime.TemplateUtils.isAttributeRendered(__jte_html_attribute_7)) {
					jteOutput.writeContent(" value=\"");
					jteOutput.setContext("input", "value");
					jteOutput.writeUserContent(__jte_html_attribute_7);
					jteOutput.setContext("input", null);
					jteOutput.writeContent("\"");
				}
				jteOutput.writeContent(">\r\n                            </div>\r\n\r\n                            ");
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
				jteOutput.writeContent("\" required>\r\n                                <option value=\"\" selected disabled>Choose a category...</option>\r\n                                <option value=\"Backend\"");
				var __jte_html_attribute_8 = "Backend".equals(createSnippetDTO.getCategory());
				if (__jte_html_attribute_8) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Backend</option>\r\n                                <option value=\"Frontend\"");
				var __jte_html_attribute_9 = "Frontend".equals(createSnippetDTO.getCategory());
				if (__jte_html_attribute_9) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">Frontend</option>\r\n                                <option value=\"DevOps\"");
				var __jte_html_attribute_10 = "DevOps".equals(createSnippetDTO.getCategory());
				if (__jte_html_attribute_10) {
				jteOutput.writeContent(" selected");
				}
				jteOutput.writeContent(">DevOps</option>\r\n                                <option value=\"Utility\"");
				var __jte_html_attribute_11 = "Utility".equals(createSnippetDTO.getCategory());
				if (__jte_html_attribute_11) {
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
				jteOutput.writeUserContent(createSnippetDTO.getContent() == null ? "" : createSnippetDTO.getContent());
				jteOutput.writeContent("</textarea>\r\n                            ");
				if (bindingResult != null && bindingResult.hasFieldErrors("content")) {
					jteOutput.writeContent("\r\n                                <div class=\"invalid-feedback\">");
					jteOutput.setContext("div", null);
					jteOutput.writeUserContent(bindingResult.getFieldError("content").getDefaultMessage());
					jteOutput.writeContent("</div>\r\n                            ");
				}
				jteOutput.writeContent("\r\n                        </div>\r\n\r\n                        <div class=\"d-flex justify-content-between\">\r\n                            <a href=\"/snippets\" class=\"btn btn-outline-secondary\">Cancel</a>\r\n                            <button type=\"submit\" class=\"btn btn-primary\">Save Snippet</button>\r\n                        </div>\r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n");
			}
		});
		jteOutput.writeContent("\r\n");
	}
	public static void renderMap(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, java.util.Map<String, Object> params) {
		CreateSnippetDTO createSnippetDTO = (CreateSnippetDTO)params.get("createSnippetDTO");
		BindingResult bindingResult = (BindingResult)params.get("bindingResult");
		render(jteOutput, jteHtmlInterceptor, createSnippetDTO, bindingResult);
	}
}
