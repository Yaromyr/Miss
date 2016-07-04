package ua.com.miss.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ua.com.miss.entity.User;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Yulian Bulbuk on 02.07.2016.
 */
@Component
public class UserValidator implements Validator{

    private Pattern pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");


    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {


        User user = (User)target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name","name.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"secondname","secondname.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"email","email.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"phone","phone.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"password","password.empty");
        if(!user.getPassword().equals(user.getPasswordConfirm())){
            errors.rejectValue("passwordConfirm", "password.confirm.false");
        }
        Matcher matcher;
        if (!(matcher = pattern.matcher(user.getEmail())).matches()){
            errors.rejectValue("email", "email.wrong.format");
        }
    }
}
