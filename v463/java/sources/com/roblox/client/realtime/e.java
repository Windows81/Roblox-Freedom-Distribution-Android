package com.roblox.client.realtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Long> f6949b;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f6950a = new e();
    }

    private void c() {
    }

    public static e a() {
        return a.f6950a;
    }

    private e() {
        this.f6948a = false;
        this.f6949b = new HashMap();
    }

    public synchronized JSONObject b() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        for (String str : this.f6949b.keySet()) {
            try {
                jSONObject.put(str, this.f6949b.get(str));
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public synchronized void a(String str, long j) {
        this.f6949b.put(str, Long.valueOf(j));
        c();
    }

    public synchronized ArrayList<String> a(JSONObject jSONObject) {
        ArrayList<String> arrayList;
        arrayList = new ArrayList<>();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            long jOptLong = jSONObject.optLong(next);
            Long l = this.f6949b.get(next);
            if (l == null || jOptLong != l.longValue()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public synchronized void b(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.f6949b.put(next, Long.valueOf(jSONObject.optLong(next)));
        }
        c();
    }
}
