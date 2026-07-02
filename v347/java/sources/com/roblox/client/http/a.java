package com.roblox.client.http;

import android.os.AsyncTask;
import com.roblox.client.http.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends AsyncTask<Void, Void, j> implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected j f7077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f7078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected b.a[] f7079c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected l f7080d;
    protected String e = null;
    protected String f = null;
    protected com.roblox.client.http.a.d<j> g;

    public a(String str, l lVar, b.a[] aVarArr) {
        this.f7080d = lVar;
        this.f7078b = str;
        this.f7079c = aVarArr;
        a(new com.roblox.client.http.a.c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public j doInBackground(Void... voidArr) {
        this.f7077a = b.b(this.f7078b, this.e, this.f7079c, this.f);
        while (this.g != null && this.g.a(this.f7077a) && this.g.c()) {
            if (this.g.a() > 0) {
                try {
                    Thread.sleep(this.g.a());
                } catch (InterruptedException e) {
                    com.roblox.client.util.g.b("rbx.httprequest", "Thread sleep error: " + e.getMessage());
                }
            }
            this.f7077a = b.b(this.f7078b, this.e, this.f7079c, this.f);
            this.g.b();
            a();
            if (b()) {
                return null;
            }
        }
        return this.f7077a;
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
        if (this.f7080d != null) {
            this.f7080d.b(this.f7077a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(j jVar) {
        super.onPostExecute(jVar);
        if (this.f7080d != null) {
            this.f7080d.a(this.f7077a);
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
