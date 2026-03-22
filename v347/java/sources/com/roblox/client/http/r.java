package com.roblox.client.http;

import android.os.AsyncTask;
import com.roblox.client.http.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class r extends AsyncTask<Void, Void, j> implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected m f7107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f7108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f7109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f7110d;
    private String e;
    private String f;
    private b.a[] g;
    private String h;

    public r(String str, String str2, b.a[] aVarArr, m mVar) {
        this(str, str2, aVarArr, mVar, null);
    }

    public r(String str, String str2, b.a[] aVarArr, m mVar, String str3) {
        this(str, str2, aVarArr, mVar, str3, -1, -1);
    }

    public r(String str, String str2, b.a[] aVarArr, m mVar, String str3, int i, int i2) {
        this.f7108b = -1;
        this.f7109c = -1;
        this.f7107a = mVar;
        this.e = str;
        this.f = str2;
        this.g = aVarArr;
        this.h = str3;
        if (str2 == null) {
            this.f = "";
        }
        this.f7108b = i;
        this.f7109c = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j doInBackground(Void... voidArr) {
        this.f7110d = b.a(this.e, this.f, this.g, this.h, this.f7108b, this.f7109c);
        return this.f7110d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(j jVar) {
        super.onPostExecute(jVar);
        if (this.f7107a != null) {
            this.f7107a.a(this.f7110d);
        }
    }

    @Override // com.roblox.client.http.e
    public void c() {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
