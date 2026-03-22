package microsoft.aspnet.signalr.client.http;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class StreamResponse implements Response {
    Map<String, List<String>> mHeaders;
    private InputStream mOriginalStream;
    private BufferedReader mReader;
    private int mStatus;

    public StreamResponse(InputStream inputStream, int i, Map<String, List<String>> map) {
        this.mOriginalStream = inputStream;
        this.mReader = new BufferedReader(new InputStreamReader(this.mOriginalStream, Constants.UTF8));
        this.mHeaders = new HashMap(map);
        this.mStatus = i;
    }

    @Override // microsoft.aspnet.signalr.client.http.Response
    public byte[] readAllBytes() throws IOException {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[1024];
        int i2 = this.mOriginalStream.read(bArr, 0, 1024);
        while (true) {
            int i3 = i2;
            if (i3 == -1) {
                break;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList.add(Byte.valueOf(bArr[i4]));
            }
            i2 = this.mOriginalStream.read(bArr, 0, 1024);
        }
        byte[] bArr2 = new byte[arrayList.size()];
        while (true) {
            int i5 = i;
            if (i5 < arrayList.size()) {
                bArr2[i5] = ((Byte) arrayList.get(i5)).byteValue();
                i = i5 + 1;
            } else {
                return bArr2;
            }
        }
    }

    @Override // microsoft.aspnet.signalr.client.http.Response
    public String readToEnd() throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = this.mReader.readLine();
            if (line != null) {
                sb.append(line);
                sb.append("\n");
            } else {
                return sb.toString();
            }
        }
    }

    @Override // microsoft.aspnet.signalr.client.http.Response
    public int getStatus() {
        return this.mStatus;
    }

    @Override // microsoft.aspnet.signalr.client.http.Response
    public String readLine() throws IOException {
        return this.mReader.readLine();
    }

    @Override // microsoft.aspnet.signalr.client.http.Response
    public Map<String, List<String>> getHeaders() {
        return new HashMap(this.mHeaders);
    }

    @Override // microsoft.aspnet.signalr.client.http.Response
    public List<String> getHeader(String str) {
        return this.mHeaders.get(str);
    }
}
