package com.roblox.client.purchase.google.a;

import android.app.Activity;
import android.content.Intent;
import android.os.RemoteException;
import com.roblox.client.purchase.google.a.e;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface c {
    int a(String str, g gVar, List<String> list) throws JSONException, RemoteException;

    void a(Activity activity, String str, int i, e.c cVar, String str2);

    void a(e.d dVar);

    void a(e.InterfaceC0127e interfaceC0127e);

    void a(h hVar, e.a aVar);

    void a(boolean z);

    void a(boolean z, List<String> list, e.InterfaceC0127e interfaceC0127e);

    boolean a(int i, int i2, Intent intent);
}
