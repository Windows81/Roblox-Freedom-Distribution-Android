package com.roblox.client.http;

import android.os.AsyncTask;
import com.roblox.client.http.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class q extends AsyncTask<Void, Void, j> implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected m f6351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f6352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f6353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f6354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6355e;
    private String f;
    private b.a[] g;
    private String h;

    public q(String str, String str2, b.a[] aVarArr, m mVar) {
        this(str, str2, aVarArr, mVar, null);
    }

    public q(String str, String str2, b.a[] aVarArr, m mVar, String str3) {
        this(str, str2, aVarArr, mVar, str3, -1, -1);
    }

    public q(String str, String str2, b.a[] aVarArr, m mVar, String str3, int i, int i2) {
        this.f6352b = -1;
        this.f6353c = -1;
        this.f6351a = mVar;
        this.f6355e = str;
        this.f = str2;
        this.g = aVarArr;
        this.h = str3;
        if (str2 == null) {
            this.f = "";
        }
        this.f6352b = i;
        this.f6353c = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j doInBackground(Void... voidArr) {
        j jVarA = b.a(this.f6355e, this.f, this.g, this.h, this.f6352b, this.f6353c);
        this.f6354d = jVarA;
        return jVarA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(j jVar) {
        super.onPostExecute(jVar);
        m mVar = this.f6351a;
        if (mVar != null) {
            mVar.a(this.f6354d);
        }
    }

    @Override // com.roblox.client.http.e
    public void c() {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
