package projekti2019.Avion.model;

/*Klasa kojom prezerviram neko stanje tj. klasa koja treba da se ponasa kao cookie. 
Klasa koja treba od stateless http protokola da napravi stateful protokol
Klasa koja omogucava da polepim u token sve sto mi treba 
U token(cookie) nalepim sve sto mi treba da se prenese*/
public class UserTokenState {
	
    private String accessToken;
    private Long expiresIn;

    public UserTokenState() {
        this.accessToken = null;
        this.expiresIn = null;
    }

    public UserTokenState(String accessToken, long expiresIn) {
        this.accessToken = accessToken;
        this.expiresIn = expiresIn;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public Long getExpiresIn() {
        return expiresIn;
    }

    public void setExpiresIn(Long expiresIn) {
        this.expiresIn = expiresIn;
    }
}