package com.roblox.client.locale.db;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.roblox.client.locale.db.room.StringsDB;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c extends AsyncTask<Void, Void, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringsDB f7369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.locale.db.room.b f7370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.locale.c f7371c;

    c(StringsDB stringsDB, HashMap<String, String> map, com.roblox.client.locale.c cVar) {
        this.f7369a = stringsDB;
        this.f7371c = cVar;
        this.f7370b = a(map);
    }

    private com.roblox.client.locale.db.room.b a(HashMap<String, String> map) {
        if (this.f7371c != null) {
            String strA = this.f7371c.a();
            if (!TextUtils.isEmpty(strA) && map != null && !map.isEmpty()) {
                return new com.roblox.client.locale.db.room.b(strA, map);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        if (this.f7370b != null) {
            this.f7369a.j().a(this.f7370b);
            return null;
        }
        return null;
    }

    public void a() {
        execute(new Void[0]);
    }
}
