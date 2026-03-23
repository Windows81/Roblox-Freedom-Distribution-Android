.class public Lcom/roblox/client/hybrid/a/g;
.super Lcom/roblox/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a/g$b;,
        Lcom/roblox/client/hybrid/a/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "Overlay"

    .line 29
    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/roblox/client/hybrid/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/hybrid/a/g$a;-><init>(Lcom/roblox/client/hybrid/a/g;Lcom/roblox/client/hybrid/a/g$1;)V

    const-string v2, "close"

    invoke-virtual {p0, v2, v0}, Lcom/roblox/client/hybrid/a/g;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 32
    new-instance v0, Lcom/roblox/client/hybrid/a/g$b;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/hybrid/a/g$b;-><init>(Lcom/roblox/client/hybrid/a/g;Lcom/roblox/client/hybrid/a/g$1;)V

    const-string v1, "setSubmitState"

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/hybrid/a/g;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    return-void
.end method
