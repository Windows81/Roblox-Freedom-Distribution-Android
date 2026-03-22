package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ConcurrentHashMap<Uri, jv> f4639a = new ConcurrentHashMap<>();
    private static final String[] i = {"key", "value"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ContentResolver f4640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Uri f4641c;
    private volatile Map<String, String> f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f4643e = new Object();
    private final Object g = new Object();
    private final List<jx> h = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ContentObserver f4642d = new jw(this, null);

    private jv(ContentResolver contentResolver, Uri uri) {
        this.f4640b = contentResolver;
        this.f4641c = uri;
    }

    public static jv a(ContentResolver contentResolver, Uri uri) {
        jv jvVar = f4639a.get(uri);
        if (jvVar != null) {
            return jvVar;
        }
        jv jvVar2 = new jv(contentResolver, uri);
        jv jvVarPutIfAbsent = f4639a.putIfAbsent(uri, jvVar2);
        if (jvVarPutIfAbsent != null) {
            return jvVarPutIfAbsent;
        }
        jvVar2.f4640b.registerContentObserver(jvVar2.f4641c, false, jvVar2.f4642d);
        return jvVar2;
    }

    private final Map<String, String> c() {
        try {
            HashMap map = new HashMap();
            Cursor cursorQuery = this.f4640b.query(this.f4641c, i, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        map.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                }
                cursorQuery.close();
            }
            return map;
        } catch (SQLiteException | SecurityException unused) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        synchronized (this.g) {
            Iterator<jx> it = this.h.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    public final Map<String, String> a() {
        Map<String, String> mapC = jy.a("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? c() : this.f;
        if (mapC == null) {
            synchronized (this.f4643e) {
                mapC = this.f;
                if (mapC == null) {
                    mapC = c();
                    this.f = mapC;
                }
            }
        }
        return mapC != null ? mapC : Collections.emptyMap();
    }

    public final void b() {
        synchronized (this.f4643e) {
            this.f = null;
        }
    }
}
