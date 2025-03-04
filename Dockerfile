FROM eclipse-termurin:17

ENV PORT 8080

WORKDIR /app

COPY .mvn/ .vn

COPY mvnw pom.xml

RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw","spring.boot:run"]
