package com.roblox.client.locale.db;

import android.os.AsyncTask;
import com.roblox.client.ae.k;
import com.roblox.client.locale.db.room.StringsDB;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends AsyncTask<Void, Void, Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringsDB f6483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InterfaceC0156a f6484b;

    /* JADX INFO: renamed from: com.roblox.client.locale.db.a$a, reason: collision with other inner class name */
    public interface InterfaceC0156a {
        void a();
    }

    a(StringsDB stringsDB, InterfaceC0156a interfaceC0156a) {
        this.f6483a = stringsDB;
        this.f6484b = interfaceC0156a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer doInBackground(Void... voidArr) {
        return Integer.valueOf(this.f6483a.k().a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Integer num) {
        super.onPostExecute(num);
        k.a("rbx.locale", "No. of rows deleted from DB: " + num);
        InterfaceC0156a interfaceC0156a = this.f6484b;
        if (interfaceC0156a != null) {
            interfaceC0156a.a();
        }
    }

    public void a() {
        execute(new Void[0]);
    }
}
