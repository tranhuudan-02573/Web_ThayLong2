package vn.edu.hcmuaf.fit.registration.token;

import java.sql.Timestamp;
import java.util.Optional;

public class ConfirmationTokenService {

    ConfirmationTokenRepository confirmationTokenRepository;

    public void saveConfirmationToken(ConfirmationToken token) {
        confirmationTokenRepository.save(token);
    }


    public ConfirmationToken getToken(String token) {
        return confirmationTokenRepository.findByToken(token);
    }

    public void setConfirmedAt(String token) {
        confirmationTokenRepository.updateConfirmedAt(
                token, new Timestamp(System.currentTimeMillis()));
    }


}
