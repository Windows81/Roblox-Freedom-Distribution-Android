package com.roblox.client.h;

import com.roblox.client.h.t;
import com.roblox.platform.http.postbody.chat.RemoveFromConversationPostBody;

/* JADX INFO: loaded from: classes.dex */
public class i extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7045d;
    private long e;

    public i(long j, long j2) {
        this.f7045d = j;
        this.e = j2;
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + com.roblox.platform.g.a().b().a(new RemoveFromConversationPostBody(this.f7045d, this.e)).a().d().g());
    }
}
