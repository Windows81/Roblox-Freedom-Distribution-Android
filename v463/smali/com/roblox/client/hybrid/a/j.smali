.class public Lcom/roblox/client/hybrid/a/j;
.super Lcom/roblox/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Social"

    .line 29
    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/roblox/client/hybrid/a/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/hybrid/a/j$a;-><init>(Lcom/roblox/client/hybrid/a/j;Lcom/roblox/client/hybrid/a/j$1;)V

    const-string v1, "presentShareDialog"

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/hybrid/a/j;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    return-void
.end method
