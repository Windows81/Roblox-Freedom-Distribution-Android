package com.roblox.platform.http.c;

import c.ad;
import com.roblox.platform.http.returntypes.NearbyUserResponseBody;
import com.roblox.platform.http.returntypes.TokenResponseBody;
import e.b.o;
import e.b.s;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface g {
    @o(a = "v1/friends/verified/nearby/session")
    e.b<TokenResponseBody> a();

    @o(a = "/v1/users/{requesterUserId}/accept-friend-request")
    e.b<ad> a(@s(a = "requesterUserId") long j);

    @e.b.f(a = "v1/friends/verified/nearby/code/{code}")
    e.b<NearbyUserResponseBody> a(@s(a = "code") String str);

    @e.b.f(a = "v1/friends/verified/nearby/health")
    e.b<ad> b();

    @o(a = "/v1/users/{requesterUserId}/decline-friend-request")
    e.b<ad> b(@s(a = "requesterUserId") long j);

    @o(a = "v1/friends/verified/nearby/{code}/redeem")
    e.b<ad> b(@s(a = "code") String str);

    @e.b.b(a = "v1/friends/verified/nearby/session")
    e.b<ad> c();

    @o(a = "/v1/users/{targetUserId}/request-friendship")
    e.b<ad> c(@s(a = "targetUserId") long j);

    @e.b.f(a = "v1/my/friends/count")
    e.b<ad> d();
}
