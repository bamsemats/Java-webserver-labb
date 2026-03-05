package org.example.projektarbetewebserver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ForwardController {

    /**
     * Forwards all non-API and non-static resource requests to index.html
     * so that React Router can handle the routing.
     */
    @RequestMapping(value = "{path:[^\\.]*}")
    public String forward() {
        return "forward:/index.html";
    }
}
