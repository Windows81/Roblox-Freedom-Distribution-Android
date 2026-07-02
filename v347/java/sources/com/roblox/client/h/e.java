package com.roblox.client.h;

import android.content.Context;
import com.roblox.client.R;
import com.roblox.client.h.t;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class e extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7030d;
    private boolean e;
    private String f;
    private long g;
    private boolean h;
    private boolean i;
    private String j;
    private String k;

    public e(Context context, long j, boolean z) {
        this(context, j, z, null, null, -1L);
    }

    public e(Context context, long j, boolean z, String str) {
        this(context, j, z, str, null, -1L);
    }

    public e(Context context, long j, boolean z, String str, String str2, long j2) {
        this.f7030d = j;
        this.e = z;
        this.f = str2;
        this.g = j2;
        this.h = "ConversationTitleChanged".equals(str);
        this.i = "ParticipantLeft".equals(str) || "ParticipantAdded".equals(str);
        if (this.h) {
            this.j = context.getString(R.string.Feature_Chat_Response_ChatSysMsgTitleChanged);
            this.k = context.getString(R.string.Feature_Chat_Response_ChatSysMsgTitleChangedNoUser);
        }
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(this.f7030d));
        String strG = com.roblox.platform.g.a().b().a(arrayList).a().d().g();
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + strG);
        org.greenrobot.eventbus.c.a().c(b(a(), strG));
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        aVar.f7075b.printStackTrace();
        org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.e(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.roblox.client.e.e b(java.lang.String r13, java.lang.String r14) throws org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.h.e.b(java.lang.String, java.lang.String):com.roblox.client.e.e");
    }
}
