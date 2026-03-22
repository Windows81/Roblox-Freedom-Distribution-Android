package com.roblox.client.http;

import android.os.AsyncTask;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n extends AsyncTask<Void, Void, j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    m f7101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f7102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f7103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f7104d;
    private String e;
    private long f;

    public n(String str) {
        this(str, null);
    }

    public n(String str, m mVar) {
        this(str, mVar, -1, -1);
    }

    public n(String str, m mVar, int i, int i2) {
        this.f7104d = null;
        this.e = null;
        this.f7101a = null;
        this.f7102b = -1;
        this.f7103c = -1;
        this.f = 0L;
        this.f7101a = mVar;
        this.e = str;
        this.f7102b = i;
        this.f7103c = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j doInBackground(Void... voidArr) {
        this.f7104d = b.a(this.e, null, null, null, this.f7102b, this.f7103c);
        if (isCancelled()) {
            return null;
        }
        if (this.f > 0) {
            try {
                Thread.sleep(this.f);
            } catch (InterruptedException e) {
            }
        }
        return this.f7104d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(j jVar) {
        super.onPostExecute(jVar);
        if (this.f7101a != null) {
            this.f7101a.a(this.f7104d);
        }
    }

    public void a() {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
