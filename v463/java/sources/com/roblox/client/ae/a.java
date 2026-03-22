package com.roblox.client.ae;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.a.a.a;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends AsyncTask<Void, Void, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f5626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected InterfaceC0122a f5627b;

    /* JADX INFO: renamed from: com.roblox.client.ae.a$a, reason: collision with other inner class name */
    public interface InterfaceC0122a {
        void a(String str);
    }

    public a(Context context, InterfaceC0122a interfaceC0122a) {
        this.f5626a = context;
        this.f5627b = interfaceC0122a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Void... voidArr) {
        a.C0076a c0076aA;
        String strA;
        try {
            c0076aA = com.google.android.gms.a.a.a.a(this.f5626a);
        } catch (com.google.android.gms.common.i | com.google.android.gms.common.j | IOException unused) {
            c0076aA = null;
        }
        if (c0076aA != null) {
            strA = c0076aA.b() ? "00000000-0000-0000-0000-000000000000" : c0076aA.a();
        } else {
            strA = "";
        }
        k.b("AdvertisingIdAsyncTask", "advertisingId:" + strA);
        return strA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        this.f5627b.a(str);
    }
}
