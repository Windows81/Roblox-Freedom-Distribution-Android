package com.roblox.client.util;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.ads.a.a;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends AsyncTask<Void, Void, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f7912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected InterfaceC0133a f7913b;

    /* JADX INFO: renamed from: com.roblox.client.util.a$a, reason: collision with other inner class name */
    public interface InterfaceC0133a {
        void a(String str);
    }

    public a(Context context, InterfaceC0133a interfaceC0133a) {
        this.f7912a = context;
        this.f7913b = interfaceC0133a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Void... voidArr) {
        String strA = "";
        a.C0063a c0063aA = null;
        try {
            c0063aA = com.google.android.gms.ads.a.a.a(this.f7912a);
        } catch (com.google.android.gms.common.h e) {
        } catch (com.google.android.gms.common.i e2) {
        } catch (IOException e3) {
        }
        if (c0063aA != null) {
            if (c0063aA.b()) {
                strA = "00000000-0000-0000-0000-000000000000";
            } else {
                strA = c0063aA.a();
            }
        }
        g.b("AdvertisingIdAsyncTask", "advertisingId:" + strA);
        return strA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        this.f7913b.a(str);
    }
}
