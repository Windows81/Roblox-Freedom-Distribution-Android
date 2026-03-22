package com.roblox.client.locale.db;

import android.os.AsyncTask;
import com.roblox.client.locale.db.room.StringsDB;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends AsyncTask<Void, Void, Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringsDB f7364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InterfaceC0116a f7365b;

    /* JADX INFO: renamed from: com.roblox.client.locale.db.a$a, reason: collision with other inner class name */
    public interface InterfaceC0116a {
        void a();
    }

    a(StringsDB stringsDB, InterfaceC0116a interfaceC0116a) {
        this.f7364a = stringsDB;
        this.f7365b = interfaceC0116a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer doInBackground(Void... voidArr) {
        return Integer.valueOf(this.f7364a.j().a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Integer num) {
        super.onPostExecute(num);
        g.a("rbx.locale", "No. of rows deleted from DB: " + num);
        if (this.f7365b != null) {
            this.f7365b.a();
        }
    }

    public void a() {
        execute(new Void[0]);
    }
}
