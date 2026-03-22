package microsoft.aspnet.signalr.client.hubs;

import com.google.gson.a.c;
import com.google.gson.k;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class HubResult {

    @c(a = "E")
    private String mError;

    @c(a = "D")
    private Object mErrorData;

    @c(a = "I")
    private String mId;

    @c(a = "H")
    private boolean mIsHubException;

    @c(a = "R")
    private k mResult;

    @c(a = "S")
    private Map<String, k> mState;

    public String getId() {
        if (this.mId == null) {
            return null;
        }
        return this.mId.toLowerCase(Locale.getDefault());
    }

    public void setId(String str) {
        this.mId = str;
    }

    public k getResult() {
        return this.mResult;
    }

    public void setResult(k kVar) {
        this.mResult = kVar;
    }

    public boolean isHubException() {
        return this.mIsHubException;
    }

    public void setIsHubException(boolean z) {
        this.mIsHubException = z;
    }

    public String getError() {
        return this.mError;
    }

    public void setError(String str) {
        this.mError = str;
    }

    public Object getErrorData() {
        return this.mErrorData;
    }

    public void setErrorData(Object obj) {
        this.mErrorData = obj;
    }

    public Map<String, k> getState() {
        return this.mState;
    }

    public void setState(Map<String, k> map) {
        this.mState = map;
    }
}
