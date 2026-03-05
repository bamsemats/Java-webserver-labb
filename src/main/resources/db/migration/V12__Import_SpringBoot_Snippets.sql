-- V12__Import_SpringBoot_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Spring Boot: RestController', 'Basic REST endpoint setup.', '@RestController
@RequestMapping("/api")
public class MyController {
    @GetMapping("/hello")
    public String sayHello() {
        return "Hello World";
    }
}', 'Spring Boot', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Service Annotation', 'Defining business logic layer.', '@Service
public class UserService {
    private final UserRepository repository;
    public UserService(UserRepository repository) {
        this.repository = repository;
    }
}', 'Spring Boot', 'Architecture', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: JpaRepository', 'Data access layer interface.', 'public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}', 'Spring Boot', 'Data', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Bean Configuration', 'Manual bean registration.', '@Configuration
public class AppConfig {
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}', 'Spring Boot', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: ConditionalOnProperty', 'Loading beans conditionally.', '@Bean
@ConditionalOnProperty(name = "feature.enabled", havingValue = "true")
public MyFeature feature() {
    return new MyFeature();
}', 'Spring Boot', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: ExceptionHandler', 'Global error handling.', '@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<String> handleNotFound(Exception ex) {
        return ResponseEntity.status(404).body(ex.getMessage());
    }
}', 'Spring Boot', 'Architecture', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Scheduled Task', 'Running background jobs.', '@Component
public class MyTask {
    @Scheduled(cron = "0 0 * * * *")
    public void runJob() {
        System.out.println("Job running every hour");
    }
}', 'Spring Boot', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Profile Specific Properties', 'Configuration for environments.', '# application-dev.properties
spring.datasource.url=jdbc:h2:mem:devdb
spring.jpa.show-sql=true', 'Spring Boot', 'Config', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Async Method', 'Enabling parallel execution.', '@EnableAsync
@Service
public class AsyncService {
    @Async
    public CompletableFuture<String> process() {
        return CompletableFuture.completedFuture("Done");
    }
}', 'Spring Boot', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Custom Validator', 'Validation logic for DTOs.', 'public class UniqueEmailValidator implements ConstraintValidator<UniqueEmail, String> {
    public boolean isValid(String email, ConstraintValidatorContext ctx) {
        return !repository.existsByEmail(email);
    }
}', 'Spring Boot', 'Data', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: CommandLineRunner', 'Executing code on startup.', '@Component
public class MyRunner implements CommandLineRunner {
    public void run(String... args) {
        System.out.println("App started!");
    }
}', 'Spring Boot', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Value Annotation', 'Injecting property values.', '@Value("${app.api.key}")
private String apiKey;', 'Spring Boot', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Transactional', 'Ensuring atomicity.', '@Transactional
public void updateBalance(Long id, BigDecimal amount) {
    User user = repository.findById(id).orElseThrow();
    user.setBalance(user.getBalance().add(amount));
}', 'Spring Boot', 'Data', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Logging SLF4J', 'Standard logging practice.', 'private static final Logger logger = LoggerFactory.getLogger(MyClass.class);
logger.info("Processing request for id: {}", id);', 'Spring Boot', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: RequestParam and PathVariable', 'Handling URL parameters.', '@GetMapping("/search/{id}")
public String find(@PathVariable Long id, @RequestParam String q) {
    return "Searching " + q + " for " + id;
}', 'Spring Boot', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Autowired Constructor', 'Best practice dependency injection.', '@Service
public class MyService {
    private final OtherService other;
    public MyService(OtherService other) { this.other = other; }
}', 'Spring Boot', 'Architecture', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Actuator Endpoint', 'Monitoring basics.', 'management.endpoints.web.exposure.include=health,info,metrics', 'Spring Boot', 'Config', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Testing with MockMvc', 'Integration test example.', '@WebMvcTest(MyController.class)
class MyTest {
    @Autowired private MockMvc mockMvc;
    @Test void test() throws Exception {
        mockMvc.perform(get("/api/hello")).andExpect(status().isOk());
    }
}', 'Spring Boot', 'Testing', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: ComponentScan', 'Custom package scanning.', '@SpringBootApplication(scanBasePackages = "org.example")
public class App { }', 'Spring Boot', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Spring Boot: Entity Listener', 'Lifecycle audit hooks.', '@EntityListeners(AuditingEntityListener.class)
public class BaseEntity {
    @CreatedDate private LocalDateTime createdAt;
}', 'Spring Boot', 'Data', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
