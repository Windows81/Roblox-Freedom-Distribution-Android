.class public Lcom/roblox/client/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/http/f;


# direct methods
.method public static a()Lcom/roblox/client/http/f;
    .locals 1

    .line 14
    sget-object v0, Lcom/roblox/client/http/g;->a:Lcom/roblox/client/http/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/roblox/client/http/h;

    invoke-direct {v0}, Lcom/roblox/client/http/h;-><init>()V

    :goto_0
    return-object v0
.end method
