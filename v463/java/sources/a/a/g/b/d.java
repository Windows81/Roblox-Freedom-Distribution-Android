package a.a.g.b;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UUID f437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, Object> f441e;
    public String f;
    public Exception g;
    public List<String> h;
    public ArrayList<a.a.g.d> i;

    public d(Exception exc, Map<String, Object> map) {
        this(exc, map, null);
    }

    public d(Exception exc, Map<String, Object> map, List<String> list) {
        this.f437a = UUID.randomUUID();
        this.f438b = System.currentTimeMillis() / 1000;
        this.f439c = false;
        this.f440d = "";
        this.f441e = map == null ? new HashMap<String, Object>() { // from class: a.a.g.b.d.1
        } : map;
        this.h = list == null ? new ArrayList<>() : list;
        this.g = exc;
        this.f439c = Boolean.valueOf(exc != null);
        this.i = new a.a.g.e(exc).a();
        if (!this.f439c.booleanValue() || exc == null) {
            return;
        }
        this.f440d = exc.getClass().getCanonicalName();
    }

    public a.a.g.a a(Context context, Map<String, Object> map) {
        return new a.a.g.a(context, this, map);
    }

    public static Map<String, Object> a(d dVar, Map<String, Object> map) {
        Map<String, Object> map2 = dVar.f441e;
        if (map2 == null) {
            map2 = new HashMap<>();
        }
        if (map == null) {
            return map2;
        }
        map2.putAll(map);
        return map2;
    }
}
