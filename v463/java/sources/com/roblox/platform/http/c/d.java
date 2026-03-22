package com.roblox.platform.http.c;

import c.ad;
import com.roblox.platform.http.postbody.auth.SignUpChallengePostBody;
import com.roblox.platform.http.postbody.auth.SignUpPostBody;
import com.roblox.platform.http.postbody.auth.SignUpVoucherPostBody;
import com.roblox.platform.http.postbody.webinterface.ChangeUsernamePostBody;
import com.roblox.platform.http.returntypes.auth.SignUpChallengeResponseBody;
import com.roblox.platform.http.returntypes.auth.SignUpResponseBody;
import com.roblox.platform.http.returntypes.auth.SignUpVoucherResponseBody;
import e.b.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface d {
    @o(a = "/v2/verified-signup/challenge")
    e.b<SignUpChallengeResponseBody> a(@e.b.a SignUpChallengePostBody signUpChallengePostBody);

    @o(a = "/v2/verified-signup")
    e.b<SignUpResponseBody> a(@e.b.a SignUpPostBody signUpPostBody);

    @o(a = "/v2/verified-signup/voucher")
    e.b<SignUpVoucherResponseBody> a(@e.b.a SignUpVoucherPostBody signUpVoucherPostBody);

    @o(a = "/v1/username")
    e.b<ad> a(@e.b.a ChangeUsernamePostBody changeUsernamePostBody);
}
