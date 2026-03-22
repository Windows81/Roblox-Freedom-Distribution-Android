package com.roblox.client.locale.db;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.roblox.client.ae.k;
import com.roblox.client.locale.db.room.StringsDB;
import com.roblox.client.locale.f;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends AsyncTask<Void, Void, com.roblox.client.locale.db.room.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringsDB f6485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f6486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f6487c;

    public interface a {
        void a(HashMap<String, String> map);
    }

    b(StringsDB stringsDB, f fVar, a aVar) {
        this.f6485a = stringsDB;
        this.f6486b = fVar;
        this.f6487c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.roblox.client.locale.db.room.b doInBackground(Void... voidArr) {
        f fVar;
        if (this.f6485a == null || (fVar = this.f6486b) == null) {
            return null;
        }
        String strA = fVar.a();
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return this.f6485a.k().a(strA);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(com.roblox.client.locale.db.room.b bVar) {
        a aVar;
        super.onPostExecute(bVar);
        if (bVar != null && (aVar = this.f6487c) != null) {
            aVar.a(bVar.b());
            return;
        }
        a aVar2 = this.f6487c;
        if (aVar2 != null) {
            aVar2.a(null);
            k.a("rbx.locale", "Strings retrieved from DB is null");
        }
    }

    public void a() {
        execute(new Void[0]);
    }
}
