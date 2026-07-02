package com.appsflyer;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class z extends AsyncTask<Void, Void, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f2265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2266b;

    z(WeakReference<Context> weakReference) {
        this.f2265a = weakReference;
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        super.onPreExecute();
        this.f2266b = g.a().a("gcmProjectNumber");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(Void... voidArr) {
        try {
            if (this.f2266b == null) {
                return null;
            }
            return m.b((WeakReference<Context>) this.f2265a, this.f2266b);
        } catch (Throwable th) {
            c.a("Error registering for uninstall feature", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            String strA = g.a().a("afUninstallToken");
            n nVar = new n(str);
            if (strA == null) {
                m.a(this.f2265a.get(), nVar);
                return;
            }
            n nVarA = n.a(strA);
            if (nVarA != null && nVarA.a(nVar)) {
                m.a(this.f2265a.get(), nVarA);
            }
        }
    }
}
