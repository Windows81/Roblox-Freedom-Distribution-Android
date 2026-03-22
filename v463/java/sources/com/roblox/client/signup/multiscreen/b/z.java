package com.roblox.client.signup.multiscreen.b;

import android.text.TextUtils;
import com.roblox.abtesting.a;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.signup.multiscreen.a.i;
import com.roblox.platform.http.postbody.auth.SignUpChallengePostBody;
import com.roblox.platform.http.postbody.auth.SignUpPostBody;
import com.roblox.platform.http.postbody.auth.SignUpVoucherPostBody;
import com.roblox.platform.http.returntypes.auth.SignUpChallengeResponseBody;
import com.roblox.platform.http.returntypes.auth.SignUpResponseBody;
import com.roblox.platform.http.returntypes.auth.SignUpVoucherResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class z extends androidx.lifecycle.p<com.roblox.client.signup.multiscreen.a.i> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.c f7258e;
    private y f;
    private com.roblox.abtesting.a g;
    private com.roblox.client.s.h h;
    private com.roblox.platform.http.c.d i;
    private String j;
    private String k;
    private String l;
    private String m;
    private com.roblox.client.signup.multiscreen.a.a n;
    private i.a o;

    public z(com.roblox.client.signup.multiscreen.c cVar, y yVar, com.roblox.abtesting.a aVar, com.roblox.client.s.h hVar, com.roblox.platform.http.c.d dVar) {
        this.f7258e = cVar;
        this.f = yVar;
        this.i = dVar;
        this.h = hVar;
        this.g = aVar;
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.b.z$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f7259a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f7260b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.roblox.client.signup.multiscreen.a.a f7261c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f7262d;

        AnonymousClass1(String str, String str2, com.roblox.client.signup.multiscreen.a.a aVar, String str3) {
            this.f7259a = str;
            this.f7260b = str2;
            this.f7261c = aVar;
            this.f7262d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.roblox.client.ae.k.c("VerifiedSignUpLiveData", "doSignUp");
            z.this.m = this.f7259a;
            z.this.l = this.f7260b;
            z.this.n = this.f7261c;
            if ("sms".equals(this.f7262d.toLowerCase())) {
                z.this.o = i.a.PHONE;
            } else if ("email".equals(this.f7262d.toLowerCase())) {
                z.this.o = i.a.EMAIL;
            } else {
                z.this.a(new com.roblox.client.signup.multiscreen.a.i(i.b.CHALLENGE_INVALID_DELIVERY_METHOD, z.this.m, i.a.UNKNOWN));
                return;
            }
            z.this.f.b();
            z.this.i.a(new SignUpChallengePostBody(z.this.o == i.a.PHONE ? "Sms" : ContactRequestObject.JSON_FIELD_EMAIL, z.this.m)).a(new e.d<SignUpChallengeResponseBody>() { // from class: com.roblox.client.signup.multiscreen.b.z.1.1
                @Override // e.d
                public void a(final e.b<SignUpChallengeResponseBody> bVar, final e.l<SignUpChallengeResponseBody> lVar) {
                    z.this.f7258e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.z.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                            com.roblox.client.ae.k.c("VerifiedSignUpLiveData", "Code: " + lVar.a() + ". ErrorBody: " + bVar2.a() + "Url: " + bVar.d().a().h());
                            z.this.a(bVar.d().a().h(), (com.roblox.platform.http.returntypes.b<SignUpChallengeResponseBody>) bVar2);
                        }
                    });
                }

                @Override // e.d
                public void a(final e.b<SignUpChallengeResponseBody> bVar, final Throwable th) {
                    z.this.f7258e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.z.1.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.roblox.client.ae.k.c("VerifiedSignUpLiveData", "doSignUp.onFailure: " + th.getMessage());
                            z.this.a(bVar.d().a().h(), (com.roblox.platform.http.returntypes.b<SignUpChallengeResponseBody>) new com.roblox.platform.http.returntypes.b());
                        }
                    });
                }
            });
        }
    }

    public void a(String str, String str2, com.roblox.client.signup.multiscreen.a.a aVar, String str3) {
        this.f7258e.a().execute(new AnonymousClass1(str2, str3, aVar, str));
    }

    public void a(String str) {
        if (TextUtils.isEmpty(this.j)) {
            b(new com.roblox.client.signup.multiscreen.a.i(i.b.UNKNOWN_ERROR, this.m, this.o));
        } else {
            this.f.d();
            this.i.a(new SignUpVoucherPostBody(this.j, str)).a(new e.d<SignUpVoucherResponseBody>() { // from class: com.roblox.client.signup.multiscreen.b.z.2
                @Override // e.d
                public void a(final e.b<SignUpVoucherResponseBody> bVar, final e.l<SignUpVoucherResponseBody> lVar) {
                    z.this.f7258e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.z.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                            com.roblox.client.ae.k.c("VerifiedSignUpLiveData", "Code: " + lVar.a() + ". ErrorBody: " + bVar2.a());
                            z.this.b(bVar.d().a().h(), (com.roblox.platform.http.returntypes.b<SignUpVoucherResponseBody>) bVar2);
                        }
                    });
                }

                @Override // e.d
                public void a(final e.b<SignUpVoucherResponseBody> bVar, final Throwable th) {
                    z.this.f7258e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.z.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.roblox.client.ae.k.c("VerifiedSignUpLiveData", "verifyCode.Failure: " + th.getMessage());
                            z.this.b(bVar.d().a().h(), (com.roblox.platform.http.returntypes.b<SignUpVoucherResponseBody>) new com.roblox.platform.http.returntypes.b());
                        }
                    });
                }
            });
        }
    }

    public void f() {
        this.f.e();
        this.i.a(new SignUpPostBody(this.k, a(this.n.f7140b, this.n.f7141c, this.n.f7139a), this.l)).a(new e.d<SignUpResponseBody>() { // from class: com.roblox.client.signup.multiscreen.b.z.3
            @Override // e.d
            public void a(final e.b<SignUpResponseBody> bVar, final e.l<SignUpResponseBody> lVar) {
                z.this.f7258e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.z.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                        com.roblox.client.ae.k.c("VerifiedSignUpLiveData", "Code: " + lVar.a() + ". ErrorBody: " + bVar2.a());
                        z.this.c(bVar.d().a().h(), bVar2);
                    }
                });
            }

            @Override // e.d
            public void a(final e.b<SignUpResponseBody> bVar, final Throwable th) {
                z.this.f7258e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.z.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b();
                        com.roblox.client.ae.k.c("VerifiedSignUpLiveData", "finalStep.Failure: " + th.getMessage());
                        z.this.c(bVar.d().a().h(), bVar2);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.roblox.platform.http.returntypes.b<SignUpChallengeResponseBody> bVar) {
        i.b bVarA;
        String str2;
        if (bVar.b()) {
            if (bVar.f7733b == null) {
                a(new com.roblox.client.signup.multiscreen.a.i(i.b.UNKNOWN_ERROR, this.m, this.o));
                str2 = "Android-VAppSignupC-ChallengeNullBody";
            } else {
                this.j = bVar.f7733b.challenge;
                a(new com.roblox.client.signup.multiscreen.a.i(i.b.CHALLENGE_SUCCESS, this.m, this.o));
                str2 = "Android-VAppSignupC-ChallengeSuccess";
            }
        } else {
            int iC = bVar.c();
            int i = bVar.f7732a;
            if (i == 400) {
                bVarA = a(iC);
            } else if (i == 403) {
                bVarA = c(iC);
            } else if (i == 429) {
                bVarA = b(iC);
            } else {
                if (i == 500) {
                    this.f.a();
                }
                bVarA = i.b.UNKNOWN_ERROR;
            }
            a(new com.roblox.client.signup.multiscreen.a.i(bVarA, this.m, this.o));
            this.f.a(g(), str, bVar.f7732a, iC);
            str2 = "Android-VAppSignupC-ChallengeFailure";
        }
        this.f.a(str2);
    }

    private i.b a(int i) {
        if (i == 1) {
            return i.b.CHALLENGE_EMPTY_REQUEST;
        }
        if (i == 3) {
            return i.b.CHALLENGE_INVALID_DELIVERY_METHOD;
        }
        if (i == 4) {
            return i.b.CHALLENGE_INVALID_DELIVERY_TARGET;
        }
        if (i == 5) {
            return i.b.CHALLENGE_INVALID_EMAIL_ADDRESS;
        }
        if (i == 6) {
            return i.b.CHALLENGE_INVALID_PHONE_NUMBER;
        }
        return i.b.UNKNOWN_ERROR;
    }

    private i.b b(int i) {
        if (i == 2) {
            return i.b.CHALLENGE_FLOOD_CHECKED;
        }
        if (i == 18) {
            return i.b.CAPTCHA_BEFORE_CODE_VERIFICATION;
        }
        return i.b.UNKNOWN_ERROR;
    }

    private i.b c(int i) {
        if (i == 0) {
            return i.b.CHALLENGE_INVALID_TOKEN;
        }
        if (i == 7) {
            return i.b.CHALLENGE_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL;
        }
        if (i == 8) {
            return i.b.CHALLENGE_PHONE_NUMBER_ALREADY_LINKED;
        }
        return i.b.UNKNOWN_ERROR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, com.roblox.platform.http.returntypes.b<SignUpVoucherResponseBody> bVar) {
        i.b bVarD;
        String str2;
        this.k = "";
        if (bVar.b()) {
            if (bVar.f7733b == null) {
                a(new com.roblox.client.signup.multiscreen.a.i(i.b.UNKNOWN_ERROR, this.m, this.o));
                str2 = "Android-VAppSignupC-VerifyNullBody";
            } else {
                this.k = bVar.f7733b.voucher;
                a(new com.roblox.client.signup.multiscreen.a.i(i.b.VERIFY_SUCCESS, this.m, this.o));
                f();
                str2 = "Android-VAppSignupC-VerifySuccess";
            }
        } else {
            int iC = bVar.c();
            int i = bVar.f7732a;
            if (i == 400) {
                bVarD = d(iC);
            } else if (i == 403) {
                bVarD = e(iC);
            } else if (i == 429) {
                bVarD = i.b.VERIFY_FLOOD_CHECKED;
            } else {
                if (i == 500) {
                    this.f.c();
                }
                bVarD = i.b.VERIFY_UNKNOWN_ERROR;
            }
            a(new com.roblox.client.signup.multiscreen.a.i(bVarD, this.m, this.o));
            this.f.a(g(), str, bVar.f7732a, iC);
            str2 = "Android-VAppSignupC-VerifyFailure";
        }
        this.f.b(str2);
    }

    private i.b d(int i) {
        if (i == 1) {
            return i.b.VERIFY_EMPTY_REQUEST;
        }
        if (i == 9) {
            return i.b.VERIFY_INVALID_CHALLENGE;
        }
        if (i == 11) {
            return i.b.VERIFY_INVALID_CODE;
        }
        return i.b.VERIFY_UNKNOWN_ERROR;
    }

    private i.b e(int i) {
        if (i == 0) {
            return i.b.VERIFY_INVALID_TOKEN;
        }
        if (i == 10) {
            return i.b.VERIFY_INVALID_CHALLENGE;
        }
        return i.b.VERIFY_UNKNOWN_ERROR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, final com.roblox.platform.http.returntypes.b<SignUpResponseBody> bVar) {
        i.b bVarG;
        String str2;
        if (bVar.b()) {
            if (bVar.f7733b == null) {
                a(new com.roblox.client.signup.multiscreen.a.i(i.b.UNKNOWN_ERROR, this.m, this.o));
                str2 = "Android-VAppSignupC-SignUpNullBody";
            } else {
                final long j = bVar.f7733b.userId;
                long j2 = bVar.f7733b.starterPlaceId;
                this.g.b(j);
                if (com.roblox.client.b.bP() && j2 != -1) {
                    com.roblox.client.l.a().h().a(com.roblox.client.game.h.a(Long.valueOf(j2), null, null, null, null, "SignUp"));
                }
                this.g.a(new a.InterfaceC0117a() { // from class: com.roblox.client.signup.multiscreen.b.z.4
                    @Override // com.roblox.abtesting.a.InterfaceC0117a
                    public void a() {
                        z.this.a(bVar.f7732a, j);
                    }
                });
                str2 = "Android-VAppSignupC-SignUpSuccess";
            }
        } else {
            int iC = bVar.c();
            int i = bVar.f7732a;
            if (i == 400) {
                bVarG = g(iC);
            } else if (i == 403) {
                bVarG = h(iC);
            } else if (i == 429) {
                bVarG = f(iC);
            } else if (i == 500) {
                bVarG = i(iC);
                this.f.f();
            } else {
                bVarG = i.b.UNKNOWN_ERROR;
            }
            a(new com.roblox.client.signup.multiscreen.a.i(bVarG, this.m, this.o));
            this.f.a(g(), str, bVar.f7732a, iC);
            str2 = "Android-VAppSignupC-SignUpFailure";
        }
        this.f.c(str2);
    }

    private i.b f(int i) {
        if (i == 18) {
            return i.b.CAPTCHA;
        }
        return i.b.UNKNOWN_ERROR;
    }

    private i.b g(int i) {
        if (i == 1) {
            return i.b.SIGN_UP_EMPTY_REQUEST;
        }
        if (i == 12) {
            return i.b.SIGN_UP_VOUCHER_INVALID;
        }
        if (i == 14) {
            return i.b.SIGN_UP_BIRTHDAY_INVALID;
        }
        if (i == 15) {
            return i.b.SIGN_UP_PASSWORD_INVALID;
        }
        return i.b.UNKNOWN_ERROR;
    }

    private i.b h(int i) {
        if (i == 0) {
            return i.b.SIGN_UP_INVALID_TOKEN;
        }
        if (i == 13) {
            return i.b.SIGN_UP_VOUCHER_EXPIRED;
        }
        if (i == 7) {
            return i.b.SIGN_UP_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL;
        }
        if (i == 8) {
            return i.b.SIGN_UP_PHONE_NUMBER_ALREADY_LINKED;
        }
        return i.b.UNKNOWN_ERROR;
    }

    private i.b i(int i) {
        if (i == 16) {
            return i.b.SIGN_UP_FAILED_TO_CREATE_USER;
        }
        if (i == 17) {
            return i.b.SIGN_UP_FAILED_TO_CREATE_USERNAME;
        }
        return i.b.UNKNOWN_ERROR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j) {
        this.h.a("", j);
        com.roblox.client.ad.c.a().d(this.l);
        com.roblox.client.ad.c.a().a(this.n);
        a(new com.roblox.client.signup.multiscreen.a.i(i.b.SIGN_UP_SUCCESS, this.m, this.o));
        com.roblox.client.s.f.c(i);
    }

    private String a(int i, int i2, int i3) {
        return com.roblox.client.ae.t.a("%d/%d/%d", Integer.valueOf(i + 1), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    private String g() {
        return this.o == i.a.PHONE ? "signupPhone" : "signupEmail";
    }
}
