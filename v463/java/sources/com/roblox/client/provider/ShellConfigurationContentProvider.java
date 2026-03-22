package com.roblox.client.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.util.SparseArray;
import com.roblox.client.f.d;
import com.roblox.client.o;
import com.roblox.client.provider.a.e;
import com.roblox.client.provider.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ShellConfigurationContentProvider extends ContentProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private UriMatcher f6644b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f6646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d.a f6647e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6643a = "rbx.config";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SparseArray<e> f6645c = new SparseArray<>();

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public String a(Context context) {
        return context.getPackageName() + context.getString(o.j.shell_configuration_provider_authority_suffix);
    }

    public d a() {
        return this.f6646d;
    }

    public d.a b() {
        return this.f6647e;
    }

    private void c() {
        this.f6644b = new UriMatcher(-1);
        String strA = a(getContext());
        a(strA, new com.roblox.client.provider.a.d());
        a(strA, new com.roblox.client.provider.a.b(this, getContext()));
        a(strA, new f(getContext()));
        a(strA, new com.roblox.client.provider.a.c(getContext()));
    }

    private void a(String str, e eVar) {
        a(str, eVar, eVar.a(e.a.GET));
        a(str, eVar, eVar.a(e.a.POST));
    }

    private void a(String str, e eVar, com.roblox.client.f.a aVar) {
        if (aVar != null) {
            this.f6644b.addURI(str, aVar.f, aVar.g);
            this.f6645c.put(aVar.g, eVar);
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        c();
        c cVar = new c(getContext());
        this.f6647e = cVar;
        this.f6646d = cVar.a();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        e eVar = this.f6645c.get(this.f6644b.match(uri));
        if (eVar != null) {
            return eVar.a(uri);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        e eVar = this.f6645c.get(this.f6644b.match(uri));
        if (eVar != null) {
            eVar.a(uri, contentValues);
        }
        return uri;
    }
}
