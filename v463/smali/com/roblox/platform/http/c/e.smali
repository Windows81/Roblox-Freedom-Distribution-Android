.class public interface abstract Lcom/roblox/platform/http/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/mark-as-read"
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/send-message"
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Le/b;
    .param p1    # Ljava/util/List;
        .annotation runtime Le/b/t;
            a = "featureNames"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "/v2/get-rollout-settings"
    .end annotation
.end method
