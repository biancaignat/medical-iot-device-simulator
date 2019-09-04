package medical.iot.platform.controllers;

import medical.iot.platform.mqtt.Publisher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Controller
public class MainController {
    private Publisher publisher;

    @Autowired
    public MainController(final Publisher publisher) {
        this.publisher = publisher;
    }

    @RequestMapping(value={"", "/", "/home"}, method = RequestMethod.GET)
    public String getHome() {
        return "main";
    }

    @RequestMapping(value = "/sendInv", method = RequestMethod.POST)
    public String postLogin(HttpServletRequest request) {
        String uniqueId = request.getParameter("uniqueId");

        Random random = new Random();
        String invName = null;
        if (request.getParameter("ekg") != null) {
            int rand = random.nextInt(10) + 1;
            invName = "ekg" + rand + ".png";
        } else if (request.getParameter("xray") != null) {
            int rand = random.nextInt(4) + 1;
            invName = "xray" + rand + ".jpg";
        } else if (request.getParameter("eeg") != null) {
            int rand = random.nextInt(3) + 1;
            invName = "eeg" + rand + ".jpg";
        }

        Map<String, String> properties = new HashMap<>();
        properties.put("uniqueId", uniqueId);
        properties.put("invName", invName);
        publisher.produceMsg(properties);
        return "main";
    }
}
