package com.roblox.client.locale.db;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.roblox.client.locale.db.room.StringsDB;
import com.roblox.client.util.g;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends AsyncTask<Void, Void, com.roblox.client.locale.db.room.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringsDB f7366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.locale.c f7367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f7368c;

    public interface a {
        void a(HashMap<String, String> map);
    }

    b(StringsDB stringsDB, com.roblox.client.locale.c cVar, a aVar) {
        this.f7366a = stringsDB;
        this.f7367b = cVar;
        this.f7368c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.roblox.client.locale.db.room.b doInBackground(Void... voidArr) {
        if (this.f7366a != null && this.f7367b != null) {
            String strA = this.f7367b.a();
            if (!TextUtils.isEmpty(strA)) {
                return this.f7366a.j().a(strA);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(com.roblox.client.locale.db.room.b bVar) {
        super.onPostExecute(bVar);
        if (bVar != null && this.f7368c != null) {
            this.f7368c.a(bVar.b());
        } else if (this.f7368c != null) {
            this.f7368c.a(null);
            g.a("rbx.locale", "Strings retrieved from DB is null");
        }
    }

    public void a() {
        execute(new Void[0]);
    }
}
