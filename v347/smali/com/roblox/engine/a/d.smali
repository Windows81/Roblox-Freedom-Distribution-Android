.class public Lcom/roblox/engine/a/d;
.super Lcom/roblox/engine/a/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 20
    const-string v0, "Navigations"

    const-string v1, "{\"appName\":\"%s\"}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 21
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Destination"

    .line 20
    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/engine/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/roblox/engine/a/d;->a:Ljava/lang/String;

    .line 24
    return-void
.end method
