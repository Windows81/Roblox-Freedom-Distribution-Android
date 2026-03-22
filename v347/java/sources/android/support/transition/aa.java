package android.support.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class aa {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f475b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f474a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<u> f476c = new ArrayList<>();

    public boolean equals(Object obj) {
        return (obj instanceof aa) && this.f475b == ((aa) obj).f475b && this.f474a.equals(((aa) obj).f474a);
    }

    public int hashCode() {
        return (this.f475b.hashCode() * 31) + this.f474a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f475b + "\n") + "    values:";
        Iterator<String> it = this.f474a.keySet().iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                String next = it.next();
                str = str2 + "    " + next + ": " + this.f474a.get(next) + "\n";
            } else {
                return str2;
            }
        }
    }
}
