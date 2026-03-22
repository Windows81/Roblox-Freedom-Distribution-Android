package microsoft.aspnet.signalr.client.http;

import microsoft.aspnet.signalr.client.Credentials;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class BasicAuthenticationCredentials implements Credentials {
    private Base64Encoder mEncoder;
    private String mPassword;
    private String mUsername;

    public interface Base64Encoder {
        String encodeBytes(byte[] bArr);
    }

    public BasicAuthenticationCredentials(String str, String str2, Base64Encoder base64Encoder) {
        initialize(str, str2, base64Encoder);
    }

    private void initialize(String str, String str2, Base64Encoder base64Encoder) {
        this.mUsername = str;
        this.mPassword = str2;
        this.mEncoder = base64Encoder;
        if (base64Encoder == null) {
            throw new IllegalArgumentException("encoder");
        }
    }

    public String getUsername() {
        return this.mUsername;
    }

    public void setUsername(String str) {
        this.mUsername = str;
    }

    public String getPassword() {
        return this.mPassword;
    }

    public void setPassword(String str) {
        this.mPassword = str;
    }

    @Override // microsoft.aspnet.signalr.client.Credentials
    public void prepareRequest(Request request) {
        request.addHeader("Authorization", "Basic " + this.mEncoder.encodeBytes((this.mUsername + ":" + this.mPassword).getBytes()).trim());
    }

    public class InvalidPlatformException extends Exception {
        private static final long serialVersionUID = 1975952258601813204L;

        public InvalidPlatformException() {
        }
    }
}
