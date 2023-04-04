package com.glory.notice;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpEntity;
import org.apache.http.HttpHeaders;
import org.json.JSONException;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.theokanning.openai.OpenAiService;
import com.theokanning.openai.completion.CompletionRequest;

@RestController
@RequestMapping("/chat")
public class ChatController {
	
    private static final String ENDPOINT = "https://api.openai.com/v1/completions";
    private static final String API_KEY = "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";
	
    private static HttpHeaders headers = new HttpHeaders();
	headers.setContentType(MediaType.APPLICATION_JSON);
	headers.setBearerAuth(apiKey);
    
	@Autowired
	private static PythonInterpreter intPre;
	
	@Autowired
	private static ChatGPTService chatGPTService;
	
    public String generateText() throws IOException, URISyntaxException, JSONException {
    	// RestTemplate을 사용하여 OpenAI API 호출
    	RestTemplate restTemplate = new RestTemplate();

    	String url = "https://api.openai.com/v1/engines/davinci-codex/completions";
    	String apiKey = API_KEY;
    	String prompt = "Hello, my name is ";



    	Map<String, Object> requestBody = new HashMap<>();
    	requestBody.put("prompt", prompt);
    	requestBody.put("max_tokens", 5);

    	HttpEntity<Map<String, Object>> entity = new HttpEntity<>(requestBody, headers);

    	ResponseEntity<CompletionResponse> responseEntity = restTemplate.postForEntity(url, entity, CompletionResponse.class);
    	CompletionResponse completionResponse = responseEntity.getBody();

    }

    


    
    
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String getTest() {
        intPre = new PythonInterpreter();
        intPre.execfile("C:\\develop\\JSP\\Glory\\src\\main\\test.py");
        intPre.exec("print(answer)");

        PyFunction pyFuntion = (PyFunction) intPre.get("testFunc", PyFunction.class);
        int a = 10, b = 20;
        PyObject pyobj = pyFuntion.__call__(new PyInteger(a), new PyInteger(b));
        System.out.println(pyobj.toString());

        return pyobj.toString();
    }
	

	@RequestMapping("/send")
	public void send(HttpServletResponse response) throws IOException {
    	String redirect_uri="/notice/chatGPT";
    	response.sendRedirect(redirect_uri);
	}
    
	

	
	
	
	
	
	
	
	
	
	@PostMapping("/GPT")
    public ResponseEntity<?> sendQuestion(@RequestBody String request) {
//		String answer = chatGPTService.yy("hi");
//		String answer = this.generateText("hi");
//		System.out.println(answer);
		
//        1번에 발급받은 API key를 붙여 넣는다.
        OpenAiService service = new OpenAiService("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");
        CompletionRequest completionRequest = CompletionRequest.builder()
            .prompt(request)
            .model("text-korobert-large-002") // 이 모델로 해줘야 제대로 대화가 된다. 하지만 한국어는 잘 안된다. 다른 모델을 써야할듯...
            .echo(false) // 이 기능은 내가 질문한 걸 똑같이 뱉어주고 나서 그 질문의 답을 그 뒤에 붙여서 보내기 때문에 질문을 반복할 필요가 없기 때문에 false
            .build();
        return ResponseEntity.ok(service.createCompletion(completionRequest).getChoices());
    }
	
	
//
//    private Gpt3 gpt3 = null;
//
//    public ChatController(Gpt3 gpt3) {
//        this.gpt3 = gpt3;
//    }
//
//    @PostMapping("/generate")
//    public String generateText(@RequestBody HashMap<String, Object> data) {
//        String prompt = (String) data.get("prompt");
//        Integer maxTokens = (Integer) data.get("maxTokens");
//        Double temperature = (Double) data.get("temperature");
//        Boolean stop = (Boolean) data.get("stop");
//
//        Engine engine = gpt3.getEngine();
//        Model model = gpt3.getModel(engine);
//
//        CompletionRequest.Builder builder = CompletionRequest.builder()
//                .prompt(prompt)
//                .maxTokens(maxTokens)
//                .temperature(temperature)
//                .stop(stop);
//
//        CompletionResponse completionResponse = gpt3.complete(model.getId(), builder.build());
//
//        String generatedText = ListHelpers.getFirst(completionResponse.getChoices()).getText();
//        return generatedText;
//    }
//
//    private static class Gpt3 {
//        private final String apiKey;
//        private Engine engine;
//
//        public Gpt3(String apiKey) {
//            this.apiKey = apiKey;
//        }
//
//        private Engine getEngine() throws RequestException {
//            EngineListRequest engineListRequest = new EngineListRequest.Builder()
//                    .setApiKey(apiKey)
//                    .build();
//
//            EngineListResponse engineListResponse = engineListRequest.execute();
//            engine = engineListResponse.getEngines().stream()
//                    .filter(e -> e.getLanguage().equals("en") && e.getName().equals("davinci"))
//                    .findFirst()
//                    .orElseThrow(() -> new RuntimeException("GPT-3 Engine not found."));
//
//            return engine;
//        }
//
//        private Model getModel(Engine engine) throws RequestException {
//            ModelListRequest modelListRequest = new ModelListRequest.Builder()
//                    .setApiKey(apiKey)
//                    .setEngine(engine.getId())
//                    .build();
//
//            ModelListResponse modelListResponse = modelListRequest.execute();
//            Model model = modelListResponse.getModels().stream()
//                    .filter(m -> m.getId().startsWith(engine.getId()))
//                    .findFirst()
//                    .orElseThrow(() -> new RuntimeException("GPT-3 Model not found."));
//
//            return model;
//        }
//
//        private CompletionResponse complete(String model, CompletionRequest completionRequest) throws RequestException {
//            CompletionRequest.Builder builder = completionRequest.toBuilder()
//                    .setModel(model);
//
//            CompletionRequest request = builder.build();
//            return request.execute();
//        }
//    }
//	
	
    
}




