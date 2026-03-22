package com.roblox.client.contacts;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i {

    interface a {
        void a(Cursor cursor, f fVar);

        void a(com.roblox.client.contacts.model.d dVar);

        void b(com.roblox.client.contacts.model.d dVar);
    }

    interface b {
        void a(Cursor cursor);

        void a(com.roblox.client.contacts.model.d dVar);

        void b(com.roblox.client.contacts.model.d dVar);
    }

    interface c extends com.roblox.client.l.a<b> {
        void a(int i);

        void a(ArrayList<com.roblox.client.contacts.model.d> arrayList);

        void a(List<com.roblox.client.contacts.model.d> list);

        void b();

        void c();

        void d();
    }
}
