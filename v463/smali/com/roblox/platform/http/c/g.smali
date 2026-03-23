.class public interface abstract Lcom/roblox/platform/http/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Le/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/TokenResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "v1/friends/verified/nearby/session"
    .end annotation
.end method

.method public abstract a(J)Le/b;
    .param p1    # J
        .annotation runtime Le/b/s;
            a = "requesterUserId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v1/users/{requesterUserId}/accept-friend-request"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Le/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Le/b/s;
            a = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "v1/friends/verified/nearby/code/{code}"
    .end annotation
.end method

.method public abstract b()Le/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "v1/friends/verified/nearby/health"
    .end annotation
.end method

.method public abstract b(J)Le/b;
    .param p1    # J
        .annotation runtime Le/b/s;
            a = "requesterUserId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v1/users/{requesterUserId}/decline-friend-request"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Le/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Le/b/s;
            a = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "v1/friends/verified/nearby/{code}/redeem"
    .end annotation
.end method

.method public abstract c()Le/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/b;
        a = "v1/friends/verified/nearby/session"
    .end annotation
.end method

.method public abstract c(J)Le/b;
    .param p1    # J
        .annotation runtime Le/b/s;
            a = "targetUserId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v1/users/{targetUserId}/request-friendship"
    .end annotation
.end method

.method public abstract d()Le/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "v1/my/friends/count"
    .end annotation
.end method
