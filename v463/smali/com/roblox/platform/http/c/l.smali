.class public interface abstract Lcom/roblox/platform/http/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;)Le/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Le/b/s;
            a = "locale"
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

    .annotation runtime Le/b/f;
        a = "v1/translations/{locale}?consumerType=AndroidApp"
    .end annotation
.end method
