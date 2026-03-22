package androidx.k;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f2031b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f2030a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<m> f2032c = new ArrayList<>();

    public boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.f2031b == sVar.f2031b && this.f2030a.equals(sVar.f2030a);
    }

    public int hashCode() {
        return (this.f2031b.hashCode() * 31) + this.f2030a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2031b + "\n") + "    values:";
        for (String str2 : this.f2030a.keySet()) {
            str = str + "    " + str2 + ": " + this.f2030a.get(str2) + "\n";
        }
        return str;
    }
}
