package com.roblox.client.http;

import android.os.AsyncTask;
import com.roblox.client.http.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a extends AsyncTask<Void, Void, j> implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected j f6324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f6325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected b.a[] f6326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected l f6327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f6328e = null;
    protected String f = null;
    protected com.roblox.client.http.a.d<j> g;

    public a(String str, l lVar, b.a[] aVarArr) {
        this.f6327d = lVar;
        this.f6325b = str;
        this.f6326c = aVarArr;
        a(new com.roblox.client.http.a.c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public j doInBackground(Void... voidArr) {
        this.f6324a = b.b(this.f6325b, this.f6328e, this.f6326c, this.f);
        do {
            com.roblox.client.http.a.d<j> dVar = this.g;
            if (dVar != null && dVar.a(this.f6324a) && this.g.c()) {
                if (this.g.a() > 0) {
                    try {
                        Thread.sleep(this.g.a());
                    } catch (InterruptedException e2) {
                        com.roblox.client.ae.k.b("rbx.httprequest", "Thread sleep error: " + e2.getMessage());
                    }
                }
                this.f6324a = b.b(this.f6325b, this.f6328e, this.f6326c, this.f);
                this.g.b();
                a();
            } else {
                return this.f6324a;
            }
        } while (!b());
        return null;
    }

    public void a() {
        publishProgress(new Void[0]);
    }

    public boolean b() {
        return isCancelled();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onProgressUpdate(Void... voidArr) {
        super.onProgressUpdate(voidArr);
        l lVar = this.f6327d;
        if (lVar != null) {
            lVar.b(this.f6324a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(j jVar) {
        super.onPostExecute(jVar);
        l lVar = this.f6327d;
        if (lVar != null) {
            lVar.a(this.f6324a);
        }
    }

    @Override // com.roblox.client.http.e
    public void c() {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void a(com.roblox.client.http.a.d<j> dVar) {
        this.g = dVar;
    }
}
