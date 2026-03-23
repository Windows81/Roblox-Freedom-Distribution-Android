.class public interface abstract Lcom/roblox/platform/http/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Le/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "userIds"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "size"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "format"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation runtime Le/b/t;
            a = "isCircular"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "v1/users/avatar-headshot"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Le/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "assetIds"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "returnPolicy"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "size"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "format"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation runtime Le/b/t;
            a = "isCircular"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "v1/assets"
    .end annotation
.end method
