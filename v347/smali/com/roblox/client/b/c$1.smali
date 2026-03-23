.class final Lcom/roblox/client/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/b/c;->a()Lcom/roblox/engine/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "EngineAssets"

    const-string v1, "Fingerprint"

    const-string v2, "ErrorNotFoundObbFile"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 137
    const-string v1, "EngineAssets"

    const-string v2, "UnzipContainer"

    if-eqz p1, :cond_0

    const-string v0, "OK"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 137
    :cond_0
    const-string v0, "Error"

    goto :goto_0
.end method
