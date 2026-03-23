.class public Lcom/roblox/client/hybrid/a/f;
.super Lcom/roblox/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a/f$b;,
        Lcom/roblox/client/hybrid/a/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const-string v0, "Navigation"

    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "navigateToFeature"

    new-instance v1, Lcom/roblox/client/hybrid/a/f$a;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/f$a;-><init>(Lcom/roblox/client/hybrid/a/f;Lcom/roblox/client/hybrid/a/f$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/f;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 23
    const-string v0, "openUserProfile"

    new-instance v1, Lcom/roblox/client/hybrid/a/f$b;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/f$b;-><init>(Lcom/roblox/client/hybrid/a/f;Lcom/roblox/client/hybrid/a/f$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/f;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 24
    return-void
.end method
