package microsoft.aspnet.signalr.client.http.android;

import android.util.Base64;
import microsoft.aspnet.signalr.client.http.BasicAuthenticationCredentials;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class AndroidBase64Encoder implements BasicAuthenticationCredentials.Base64Encoder {
    @Override // microsoft.aspnet.signalr.client.http.BasicAuthenticationCredentials.Base64Encoder
    public String encodeBytes(byte[] bArr) {
        return Base64.encodeToString(bArr, 0);
    }
}
