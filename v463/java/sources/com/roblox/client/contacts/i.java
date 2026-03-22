package com.roblox.client.contacts;

import android.database.Cursor;
import com.roblox.client.http.l;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    interface a {
        void a(Cursor cursor, f fVar);

        void a(com.roblox.client.contacts.model.d dVar, l lVar);

        void b(com.roblox.client.contacts.model.d dVar, l lVar);

        void c(com.roblox.client.contacts.model.d dVar, l lVar);

        void d(com.roblox.client.contacts.model.d dVar, l lVar);
    }

    interface b {
        void a(Cursor cursor);

        void a(com.roblox.client.contacts.model.d dVar);

        void b(com.roblox.client.contacts.model.d dVar);
    }

    interface c extends com.roblox.client.u.a<b> {
        void a(ArrayList<com.roblox.client.contacts.model.d> arrayList);

        void a(List<com.roblox.client.contacts.model.d> list);

        void ar();

        void as();

        void at();

        void e(int i);
    }
}
