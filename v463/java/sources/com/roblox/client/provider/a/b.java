package com.roblox.client.provider.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.widget.Toast;
import com.roblox.client.ae.k;
import com.roblox.client.f.d;
import com.roblox.client.i;
import com.roblox.client.o;
import com.roblox.client.provider.ShellConfigurationContentProvider;
import com.roblox.client.provider.a.e;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6648a = "rbx.config";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f6649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ShellConfigurationContentProvider f6650c;

    public b(ShellConfigurationContentProvider shellConfigurationContentProvider, Context context) {
        this.f6650c = shellConfigurationContentProvider;
        this.f6649b = context;
    }

    @Override // com.roblox.client.provider.a.e
    public com.roblox.client.f.a a(e.a aVar) {
        if (aVar == e.a.GET) {
            return com.roblox.client.f.a.GetConfig;
        }
        if (aVar == e.a.POST) {
            return com.roblox.client.f.a.PostConfig;
        }
        return null;
    }

    @Override // com.roblox.client.provider.a.e
    public Cursor a(Uri uri) {
        return new com.roblox.client.provider.b(this.f6650c.a());
    }

    @Override // com.roblox.client.provider.a.e
    public void a(Uri uri, ContentValues contentValues) {
        if (contentValues.containsKey("settings_param")) {
            String asString = contentValues.getAsString("settings_param");
            k.c("rbx.config", "new payload:" + asString);
            a().a(asString);
            b().a(asString);
        }
        if (contentValues.containsKey("base_url_param")) {
            String asString2 = contentValues.getAsString("base_url_param");
            k.c("rbx.config", "new baseUrl:" + asString2);
            a().b(asString2);
            b().b(asString2);
        }
        if (contentValues.containsKey("user_agent_param")) {
            String asString3 = contentValues.getAsString("user_agent_param");
            k.c("rbx.config", "set user agent:" + asString3);
            a().c(asString3);
            b().c(asString3);
        }
        if (contentValues.containsKey("dev_rpc_ip_port_override")) {
            String asString4 = contentValues.getAsString("dev_rpc_ip_port_override");
            k.c("rbx.config", "set dev rpc ip and port:" + asString4);
            a().d(asString4);
            b().d(asString4);
            i.a(this.f6649b, asString4);
            Toast.makeText(this.f6649b, o.j.CommonUI_Messages_Response_ClearAppAndRestart, 0).show();
            if (com.roblox.client.startup.c.a(this.f6649b).b()) {
                u.a(true);
            }
        }
    }

    private com.roblox.client.f.d a() {
        return this.f6650c.a();
    }

    private d.a b() {
        return this.f6650c.b();
    }
}
