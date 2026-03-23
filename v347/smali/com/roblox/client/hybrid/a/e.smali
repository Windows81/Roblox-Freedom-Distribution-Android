.class public Lcom/roblox/client/hybrid/a/e;
.super Lcom/roblox/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "Localization"

    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, "languageChangeTrigger"

    new-instance v1, Lcom/roblox/client/hybrid/a/e$a;

    invoke-direct {v1, p0}, Lcom/roblox/client/hybrid/a/e$a;-><init>(Lcom/roblox/client/hybrid/a/e;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/e;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 30
    return-void
.end method
