.class public Lcom/roblox/engine/a/a;
.super Lcom/roblox/engine/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .prologue
    .line 5
    const-string v1, "AppInput"

    const-string v2, ""

    if-eqz p1, :cond_0

    const-string v0, "Focused"

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/roblox/engine/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void

    .line 5
    :cond_0
    const-string v0, "Unfocused"

    goto :goto_0
.end method
