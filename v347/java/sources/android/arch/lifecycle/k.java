package android.arch.lifecycle;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, Integer> f152a = new HashMap();

    public boolean a(String str, int i) {
        Integer num = this.f152a.get(str);
        int iIntValue = num != null ? num.intValue() : 0;
        boolean z = (iIntValue & i) != 0;
        this.f152a.put(str, Integer.valueOf(iIntValue | i));
        return !z;
    }
}
