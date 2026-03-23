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

    const-string v0, "Navigation"

    .line 21
    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/roblox/client/hybrid/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/hybrid/a/f$a;-><init>(Lcom/roblox/client/hybrid/a/f;Lcom/roblox/client/hybrid/a/f$1;)V

    const-string v2, "navigateToFeature"

    invoke-virtual {p0, v2, v0}, Lcom/roblox/client/hybrid/a/f;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 24
    new-instance v0, Lcom/roblox/client/hybrid/a/f$b;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/hybrid/a/f$b;-><init>(Lcom/roblox/client/hybrid/a/f;Lcom/roblox/client/hybrid/a/f$1;)V

    const-string v1, "openUserProfile"

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/hybrid/a/f;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    return-void
.end method
