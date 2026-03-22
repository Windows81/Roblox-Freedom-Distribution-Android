package com.roblox.client.x;

import android.content.Context;
import android.text.TextUtils;
import com.roblox.client.ae.k;
import com.roblox.client.components.j;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f7558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f7559b;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, j jVar) {
        this.f7559b = context;
        this.f7558a = jVar;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            a();
            b("Clear the existing settings.");
            return;
        }
        try {
            String string = new JSONObject(str).toString();
            File file = new File(c(), "exe/ClientSettings/");
            if (!file.exists() && !file.mkdirs()) {
                b("Failed to create the directory to hold Local settings.");
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(d());
                fileOutputStream.write(string.getBytes());
                fileOutputStream.close();
                b("Finished saving to the device.");
            } catch (IOException e2) {
                k.e("rbx.settings.local", "File writing failed: " + e2.toString());
                b("Failed to write file to the device.");
            }
        } catch (JSONException unused) {
            b("The input is not a valid JSON string");
        }
    }

    public void a() {
        File fileD = d();
        if (fileD.exists()) {
            k.c("rbx.settings.local", "saveLocalSettings: file: " + fileD.getName() + ", DeletedOK = " + fileD.delete());
        }
    }

    public String b() {
        BufferedReader bufferedReader;
        File fileD = d();
        if (!fileD.exists()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            bufferedReader = new BufferedReader(new FileReader(fileD));
        } catch (IOException e2) {
            k.e("rbx.settings.local", "Exception caught when readLocalSettings: file: " + fileD.getName() + ": " + e2);
            b("Exception caught when readLocalSettings.");
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
            sb.append('\n');
            return sb.toString();
        }
        bufferedReader.close();
        return sb.toString();
    }

    private void b(String str) {
        j jVar = this.f7558a;
        if (jVar != null) {
            jVar.a(str, 1);
        }
    }

    private File c() {
        return this.f7559b.getApplicationContext().getFilesDir();
    }

    private File d() {
        return new File(c(), "exe/ClientSettings/ClientAppSettings.json");
    }
}
