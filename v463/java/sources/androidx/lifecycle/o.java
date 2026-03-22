package androidx.lifecycle;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, Integer> f2139a = new HashMap();

    public boolean a(String str, int i) {
        Integer num = this.f2139a.get(str);
        int iIntValue = num != null ? num.intValue() : 0;
        boolean z = (iIntValue & i) != 0;
        this.f2139a.put(str, Integer.valueOf(i | iIntValue));
        return !z;
    }
}
