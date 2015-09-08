package stepDefination.Hooks;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Created by salam on 8/12/15.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD })
public @interface BeforeSuite {

}
