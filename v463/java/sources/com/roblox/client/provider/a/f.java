package com.roblox.client.provider.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.appsflyer.internal.referrer.Payload;
import com.roblox.client.provider.a.e;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6657a;

    public f(Context context) {
        this.f6657a = context;
    }

    @Override // com.roblox.client.provider.a.e
    public com.roblox.client.f.a a(e.a aVar) {
        if (aVar == e.a.GET) {
            return com.roblox.client.f.a.GetUserAgent;
        }
        return null;
    }

    @Override // com.roblox.client.provider.a.a, com.roblox.client.provider.a.e
    public Cursor a(Uri uri) {
        String queryParameter = uri.getQueryParameter("user_agent_param");
        u.b(this.f6657a);
        if (queryParameter == null) {
            queryParameter = Payload.SOURCE_GOOGLE;
        }
        final String strA = u.a(this.f6657a, queryParameter);
        return new com.roblox.client.provider.a() { // from class: com.roblox.client.provider.a.f.1
            @Override // com.roblox.client.provider.a, android.database.AbstractCursor, android.database.Cursor
            public String[] getColumnNames() {
                return new String[]{"user_agent_param"};
            }

            @Override // com.roblox.client.provider.a, android.database.AbstractCursor, android.database.Cursor
            public String getString(int i) {
                return strA;
            }
        };
    }
}
