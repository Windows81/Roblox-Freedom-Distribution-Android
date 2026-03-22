package microsoft.aspnet.signalr.client.http;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.SimpleEntry;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class Request {
    private String mContent;
    private HashMap<String, String> mHeaders = new HashMap<>();
    private String mUrl;
    private String mVerb;

    public Request(String str) {
        this.mVerb = str;
    }

    public void setContent(String str) {
        this.mContent = str;
    }

    public String getContent() {
        return this.mContent;
    }

    public void setFormContent(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SimpleEntry(str, str2));
        setFormContent(arrayList);
    }

    public void setFormContent(List<Map.Entry<String, String>> list) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : list) {
            try {
                sb.append(String.format("%s=%s&", URLEncoder.encode(entry.getKey(), Constants.UTF8_NAME), URLEncoder.encode(entry.getValue(), Constants.UTF8_NAME)));
            } catch (UnsupportedEncodingException e) {
            }
        }
        this.mContent = sb.toString();
    }

    public Map<String, String> getHeaders() {
        HashMap map = new HashMap();
        map.putAll(this.mHeaders);
        return map;
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = new HashMap<>();
        if (map != null) {
            this.mHeaders.putAll(map);
        }
    }

    public void addHeader(String str, String str2) {
        this.mHeaders.put(str, str2);
    }

    public void removeHeader(String str) {
        this.mHeaders.remove(str);
    }

    public void setVerb(String str) {
        this.mVerb = str;
    }

    public String getVerb() {
        return this.mVerb;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void log(Logger logger) {
        if (logger != null) {
            logger.log("URL: " + getUrl(), LogLevel.Verbose);
            logger.log("VERB: " + getVerb(), LogLevel.Verbose);
            for (String str : this.mHeaders.keySet()) {
                logger.log("Header " + str + ": " + this.mHeaders.get(str), LogLevel.Verbose);
            }
            logger.log("CONTENT: " + getContent(), LogLevel.Verbose);
        }
    }
}
