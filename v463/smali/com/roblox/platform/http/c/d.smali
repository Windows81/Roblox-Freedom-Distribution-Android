.class public interface abstract Lcom/roblox/platform/http/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;",
            ")",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/auth/SignUpChallengeResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/verified-signup/challenge"
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/auth/SignUpPostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/auth/SignUpPostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/auth/SignUpPostBody;",
            ")",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/auth/SignUpResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/verified-signup"
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/auth/SignUpVoucherPostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/auth/SignUpVoucherPostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/auth/SignUpVoucherPostBody;",
            ")",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/auth/SignUpVoucherResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/verified-signup/voucher"
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v1/username"
    .end annotation
.end method
