package microsoft.aspnet.signalr.client.hubs;

import com.google.gson.a.c;
import com.google.gson.k;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class HubInvocation {

    @c(a = "A")
    private k[] mArgs;

    @c(a = "I")
    private String mCallbackId;

    @c(a = "H")
    private String mHub;

    @c(a = "M")
    private String mMethod;

    @c(a = "S")
    private Map<String, k> mState;

    public String getCallbackId() {
        return this.mCallbackId;
    }

    public void setCallbackId(String str) {
        this.mCallbackId = str;
    }

    public String getHub() {
        return this.mHub;
    }

    public void setHub(String str) {
        this.mHub = str;
    }

    public String getMethod() {
        return this.mMethod;
    }

    public void setMethod(String str) {
        this.mMethod = str;
    }

    public k[] getArgs() {
        return this.mArgs;
    }

    public void setArgs(k[] kVarArr) {
        this.mArgs = kVarArr;
    }

    public Map<String, k> getState() {
        return this.mState;
    }

    public void setState(Map<String, k> map) {
        this.mState = map;
    }
}
