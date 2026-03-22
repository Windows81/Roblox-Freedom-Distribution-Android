package com.roblox.client.locale.db;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.roblox.client.locale.db.room.StringsDB;
import com.roblox.client.locale.f;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends AsyncTask<Void, Void, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringsDB f6488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.locale.db.room.b f6489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f6490c;

    c(StringsDB stringsDB, HashMap<String, String> map, f fVar) {
        this.f6488a = stringsDB;
        this.f6490c = fVar;
        this.f6489b = a(map);
    }

    private com.roblox.client.locale.db.room.b a(HashMap<String, String> map) {
        f fVar = this.f6490c;
        if (fVar == null) {
            return null;
        }
        String strA = fVar.a();
        if (TextUtils.isEmpty(strA) || map == null || map.isEmpty()) {
            return null;
        }
        return new com.roblox.client.locale.db.room.b(strA, map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        if (this.f6489b == null) {
            return null;
        }
        this.f6488a.k().a(this.f6489b);
        return null;
    }

    public void a() {
        execute(new Void[0]);
    }
}
